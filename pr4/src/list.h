#ifndef LIST_H
#define LIST_H

#include <QObject>

class MyList : public QObject
{
    Q_OBJECT
    Q_PROPERTY (QString value READ getList WRITE append NOTIFY valueChanged)
    private:
        QList<QString> list = {};
    public:
        Q_INVOKABLE QString getList();
    public slots:
        Q_INVOKABLE void deleteLast();
        Q_INVOKABLE void append(QString word);
    signals:
        void valueChanged();
};

#endif // LIST_H
