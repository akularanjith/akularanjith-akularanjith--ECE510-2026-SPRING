
#include <iostream>
#include <cuda_runtime.h>

#define N 1024
#define T 8

__global__ void gemm_tiled(float *A, float *B, float *C) {
    __shared__ float As[T][T];
    __shared__ float Bs[T][T];
    int row = blockIdx.y * T + threadIdx.y;
    int col = blockIdx.x * T + threadIdx.x;
    float sum = 0.0f;
    for (int m = 0; m < N/T; ++m) {
        As[threadIdx.y][threadIdx.x] = A[row * N + (m * T + threadIdx.x)];
        Bs[threadIdx.y][threadIdx.x] = B[(m * T + threadIdx.y) * N + col];
        __syncthreads();
        for (int k = 0; k < T; ++k) sum += As[threadIdx.y][k] * Bs[k][threadIdx.x];
        __syncthreads();
    }
    if (row < N && col < N) C[row * N + col] = sum;
}

int main() {
    size_t bytes = N * N * sizeof(float);
    float *h_A = new float[N * N], *h_B = new float[N * N], *h_C = new float[N * N];
    for (int i = 0; i < N * N; i++) { h_A[i] = 1.0f; h_B[i] = 1.0f; }
    float *d_A, *d_B, *d_C;
    cudaMalloc(&d_A, bytes); cudaMalloc(&d_B, bytes); cudaMalloc(&d_C, bytes);
    cudaMemcpy(d_A, h_A, bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, bytes, cudaMemcpyHostToDevice);
    dim3 threads(T, T);
    dim3 blocks(N/T, N/T);
    cudaEvent_t start, stop;
    cudaEventCreate(&start); cudaEventCreate(&stop);
    cudaEventRecord(start);
    gemm_tiled<<<blocks, threads>>>(d_A, d_B, d_C);
    cudaEventRecord(stop);
    cudaEventSynchronize(stop);
    float ms = 0;
    cudaEventElapsedTime(&ms, start, stop);
    std::cout << "Tiled Performance: " << (2.0*N*N*N)/(ms*1e6) << " GFLOP/s\n";
    cudaFree(d_A); cudaFree(d_B); cudaFree(d_C);
    delete[] h_A; delete[] h_B; delete[] h_C;
    return 0;
}
