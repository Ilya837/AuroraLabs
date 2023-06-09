#ifndef STRINGLIST_H
#define STRINGLIST_H

#include <QObject>
#include <QStack>
#include <QString>

class StringList : public QObject
{
    Q_OBJECT


    Q_PROPERTY(QStack<QString> list1 NOTIFY listChanged)

    Q_PROPERTY(QString text READ getText NOTIFY textChanged)
private:
    QStack<QString> list1;
    QString text;
public:
   Q_INVOKABLE  StringList();

    Q_INVOKABLE void add(QString str);
     Q_INVOKABLE void pop();
     Q_INVOKABLE void printList();
    Q_INVOKABLE QString getText();

signals:
    void listChanged();
    void textChanged();



};

#endif // STRINGLIST_H
