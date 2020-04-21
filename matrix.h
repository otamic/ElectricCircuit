//
// Created by 冯彦澄 on 2018/11/22.
//

#ifndef ELECTRICCIRCUIT_MATRIX_H
#define ELECTRICCIRCUIT_MATRIX_H

typedef double ElemType;

typedef ElemType * Vector;
typedef ElemType ** Matrix;

void ini_vector (Vector & V, int n);
void ini_matrix (Matrix & M, int n, int m);
void destroy_matrix (Matrix & M, int n);
void destroy_vector (Vector & V);
double det (Matrix M, int n);
Vector crammer (Matrix M, Vector V, int n);

#endif //ELECTRICCIRCUIT_MATRIX_H
