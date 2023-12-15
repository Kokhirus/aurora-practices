#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class MyCounter : public QObject
{
    Q_OBJECT
    Q_PROPERTY (int m_value READ getValue NOTIFY valueChanged)
    private:
        int m_value;
    public:
        MyCounter();
        Q_INVOKABLE int getValue() const;
    public slots:
        Q_INVOKABLE void resetValue();
        Q_INVOKABLE void incrementValue();
    signals:
        void valueChanged();
};

#endif // COUNTER_H
