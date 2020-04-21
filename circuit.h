//
// Created by 冯彦澄 on 2018/11/22.
//

#ifndef ELECTRICCIRCUIT_CIRCUIT_H
#define ELECTRICCIRCUIT_CIRCUIT_H

#include "matrix.h"

const int MAX_VERTEX_NUM = 100;

typedef enum { resistance, curSource, volSource } elem;

// 元件
typedef struct InfoType {
    elem e;                             // 元件类型
    double parameter;                   // 参数，对于电压、电流，若为正，则i指向j
    struct InfoType * next;             // 下一元件
} InfoType;

// 支路（边）
typedef struct EBox {
    int ivex, jvex;                     // 依附定点位置
    struct EBox * ilink, * jlink;       // 下一条边
    InfoType * info;                    // 元件
} EBox;

// 节点
typedef struct {
    EBox * firstEdge;
} VexBox;

// 电路
typedef struct {
    VexBox adjMuList [MAX_VERTEX_NUM];  // 结点集
    int vexNum, edgeNum;
} AMLGraph;

// 传递支路参数
typedef struct {
    int i, j;
    double res, cur, vol;
} Params;

Params getParams (const EBox *);                            // 获得支路参数
int fillMatrix (const Params &, Matrix &, Vector &);        // 填充自阻、互阻矩阵
void completeMatrix (const Params &, Matrix &, Vector &, int);   // 完整矩阵
Vector getNodeVol (const AMLGraph &);                       // 获得结点电压

#endif //ELECTRICCIRCUIT_CIRCUIT_H
