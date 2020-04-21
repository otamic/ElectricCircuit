//
// Created by 冯彦澄 on 2018/11/22.
//

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include "matrix.h"

const int overflow = 0;

void ini_vector (Vector & V, int n) {
    V = (ElemType *) malloc (n*sizeof(ElemType));
    if (!V) exit(overflow);
    memset(V, 0, n*sizeof(ElemType));
}

void ini_matrix (Matrix & M, int n, int m) {
    M = (ElemType **) malloc (n*sizeof(ElemType*));
    if (!M) exit(overflow);
    for (int i = 0; i < n; i++) {
        *(M + i) = (ElemType *) malloc (m*sizeof(ElemType));
        memset(*(M+i), 0, m*sizeof(ElemType));
    }
}

void destroy_matrix (Matrix & M, int n) {
    for (int i = 0; i < n; i++)
        free(M[i]);
    free(M);
}

void destroy_vector (Vector & V) {
    free(V);
}

double det (Matrix M, int n) {
    if (n == 1) return M[0][0];

    Matrix t;
    ini_matrix(t,n-1,n-1);
    double sum = 0.0;

    for (int k = 0; k < n; k++) {
        for (int i = 0; i < n-1; i++)
            for (int j = 0; j < n-1; j++)
                if (i < k)
                    t[i][j] = M[i][j+1];
                else
                    t[i][j] = M[i+1][j+1];

        sum += pow(-1, k)*M[k][0]*det(t, n-1);
    }

    destroy_matrix(t,n-1);
    return sum;
}

Vector crammer (Matrix M, Vector V, int n){
    Vector res;
    ini_vector(res,n);
    double detm = det(M,n);
    for (int i = 0; i < n; i++) {
        Matrix tm;
        ini_matrix(tm,n,n);
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                tm[i][j] = M[i][j];
        for (int j = 0; j < n; j++)
            tm[j][i] = V[j];

        res[i] = det(tm,n) / detm;
        destroy_matrix(tm,n);
    }
    return res;
}