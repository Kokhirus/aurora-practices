#include "counter.h"
#include <QDebug>

MyCounter::MyCounter()
{
    m_value = 69;
}

int MyCounter::getValue() const
{
    return m_value;
}

void MyCounter::resetValue()
{
    m_value = 0;
    emit valueChanged();
}

void MyCounter::incrementValue()
{
    ++m_value;
    emit valueChanged();
}
