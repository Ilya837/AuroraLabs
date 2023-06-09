#include "sort1.h"
#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <ctime>
#include <random>
#include "QDebug"

Sort1::Sort1() : QObject()
{

}

void Sort1::sort(){

    srand(time(NULL));
    int n = 10000;

    std::random_device rd;

    std::mt19937 g(rd());

    int *list = new int[n];

    for(int i =0; i< n; i++){
        list[i] =i+1;

    }
    std::shuffle(list,list + n, g);




    int k = 0, tmp = 0;

    clock_t start = clock();

    for(int i =1; i< n ;i++){
        k = i;
        while(k > 0 && list[k] < list[k-1]){
           tmp = list[k-1];
            list[k-1] = list[k];
            list[k] = tmp;
            k--;
        }
    }

    clock_t end = clock();

    qDebug() <<  ((end-start) * 1000 / CLOCKS_PER_SEC) << "ms" ;

//    for (int i = 0; i < n; i++)
//            qDebug() << list[i];


}
