#ifndef COUNTER2_H
#define COUNTER2_H

#include <QObject>

class Counter2 : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int count WRITE setCount READ getCount NOTIFY countChanged)
private:
    int count;
public:
    Q_INVOKABLE  Counter2();
    Q_INVOKABLE  Counter2(int _count);
    Q_INVOKABLE    int getCount();
    Q_INVOKABLE    void add();
    Q_INVOKABLE    void clear();
    Q_INVOKABLE  void setCount(int _count);

signals:
   void countChanged();

};

#endif // COUNTER2_H
