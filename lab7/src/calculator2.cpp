#include "./calculator2.h"
#include "QDebug"
#include "stdlib.h"

Calculator2::Calculator2() : QObject()
{
    a = 0;
    b = 0;
    result = "";
}

void Calculator2::setA(int _a){
    a = _a;
}

void Calculator2::setB(int _b){
    b = _b;
}

void Calculator2::plus(){
    result =QString::number( a + b);
    emit resultChanged();
}

void Calculator2::minus(){
    result =QString::number(a - b);
    emit resultChanged();
}

void Calculator2::multiple(){
    result =QString::number(a * b);
    emit resultChanged();
}

void Calculator2::subtract(){
    if(b == 0){
       qDebug() <<  "b is 0";
       return;
    }
    result.setNum( float(a) / b);
    emit resultChanged();
}

QString Calculator2::getResult(){
    return result;
}
