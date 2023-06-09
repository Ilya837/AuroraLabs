#include "stringlist.h"
#include "QDebug"

StringList::StringList() : QObject()
{

}

void StringList::add(QString str){
    list1.append(str.toLower());


    if(list1.size() == 1){
        QString str = list1.at(0);
        text =  str.replace(0,1,str.at(0).toUpper());
    }
    else{
        text.append(", " + list1.back());
    }

    emit textChanged();
    emit listChanged();
}

void StringList::pop(){
    if(list1.size() != 0){

        if(list1.size() != 1)
            text.remove(text.size()-list1.back().size() - 2, list1.back().size() + 2);
        else
            text.remove(text.size()-list1.back().size() , list1.back().size());

        list1.pop();
        emit listChanged();
        emit textChanged();
    }
}

void StringList::printList(){
    qDebug() << "{ ";
    for(int i = 0; i< list1.size(); i++){
        qDebug() << list1.at(i) << " ";
    }
    qDebug() << "}";
}

QString StringList::getText(){
    return text;
}
