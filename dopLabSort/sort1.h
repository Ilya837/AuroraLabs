#ifndef SORT1_H
#define SORT1_H

#include <QObject>

class Sort1 : public QObject
{
    Q_OBJECT

public:
    Q_INVOKABLE Sort1();
    Q_INVOKABLE void sort();

signals:

};

#endif // SORT1_H
