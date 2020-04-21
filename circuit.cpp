//
// Created by 冯彦澄 on 2018/11/22.
//

#include <cstdlib>
#include <queue>
#include "circuit.h"
#include "matrix.h"

Params getParams (const EBox * edge) {
    Params p;
    p.i = edge->ivex; p.j = edge->jvex;
    p.cur = p.res = p.vol = 0.0;
    InfoType * t = edge->info;
    while (t) {
        switch (t->e) {
            case resistance: p.res += t->parameter; break;
            case volSource: p.vol += t->parameter; break;
            case curSource: p.cur += t->parameter; break;
        }
        t = t->next;
    }
    return p;
}

int fillMatrix (const Params & p, Matrix & M, Vector & V) { // 注意i是从1到n-1，而矩阵的索引是从0到n-2
    if (p.res && !p.cur && !p.vol) {            // 只有电阻
        M[p.i-1][p.i-1] += 1 / p.res;
        if (p.j) M[p.i-1][p.j-1] -= 1 / p.res;
    }
    else if (p.vol && !p.res && !p.cur)         // 只有独立电压源，需要特殊处理
        return 1;
    else if (p.cur && !p.res && !p.vol)         // 只有独立电流源
        V[p.i-1] -= p.cur;
    else if (p.vol && p.res && !p.cur) {        // 有伴电压源
        M[p.i-1][p.i-1] += 1 / p.res;
        if (p.j) M[p.i-1][p.j-1] -= 1 / p.res;
        V[p.i-1] -= p.vol / p.res;
    }
    else                                        // 有伴电流源
        V[p.i-1] -= p.cur;
    return 0;
}

void completeMatrix (const Params & p, Matrix & M, Vector & V, int n) {
    if (p.j == 0) {
        for (int i = 0; i < n; i++)
            M[p.i-1][i] = 0.0;
        M[p.i-1][p.i-1] = 1.0 / p.vol;
        V[p.i-1] = 1.0;
    }
    else {
        for (int i = 0; i < n; i++) {
            M[p.i-1][i] += M[p.j-1][i];
            M[p.j-1][i] = 0.0;
        }
        M[p.j-1][p.i-1] = 1.0;
        M[p.j-1][p.j-1] = -1.0;
        V[p.j-1] = -p.vol;
    }
}

Vector getNodeVol (const AMLGraph & G) {
    using std::queue;
    queue<Params> q;
    Matrix matri;
    Vector vec;
    ini_vector(vec, G.vexNum-1);                // n个结点的话，只有n-1个结点点位方程
    ini_matrix(matri, G.vexNum-1, G.vexNum-1);

    for (int i = 1; i < G.vexNum; i++) {        // 从1开始
        Params p = getParams(G.adjMuList[i].firstEdge);
        int spe = fillMatrix(p, matri, vec);
        if (spe) q.push(p);
    }

    while(!q.empty()) {
        completeMatrix(q.front(), matri, vec, G.vexNum-1);
        q.pop();
    }

    return crammer(matri, vec, G.vexNum);
}