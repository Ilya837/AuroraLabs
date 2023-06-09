#ifndef CALCULATOR2_H
#define CALCULATOR2_H

#include <QObject>
#include <QString>
#include <string>


class Calculator2 : public QObject
{

     Q_OBJECT

    Q_PROPERTY(QString result READ getResult  NOTIFY resultChanged)
    Q_PROPERTY(int a WRITE setA )
    Q_PROPERTY(int b WRITE setB )
private:
    int a,b;
    QString result;
public:


    Q_INVOKABLE void setA(int _a);
    Q_INVOKABLE void setB(int _b);
    Q_INVOKABLE Calculator2();
    Q_INVOKABLE QString getResult();
    Q_INVOKABLE void plus();
    Q_INVOKABLE void minus();
    Q_INVOKABLE void multiple();
    Q_INVOKABLE void subtract();

signals:
    void resultChanged();


};

#endif // CALCULATOR2_H
