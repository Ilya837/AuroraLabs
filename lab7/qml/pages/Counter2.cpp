#include "./Counter2.h"

Counter2::Counter2() : QObject()
{
    count = 0;
}

Counter2::Counter2(int _count) : QObject()
{
    count = _count;
}

void Counter2::add(){
    count++;
    emit countChanged();
}

void Counter2::clear(){
    count = 0;
    emit countChanged();
}

int Counter2::getCount(){
    return count;
}

void Counter2::setCount(int _count){
    count = _count;
}


