#include "list.h"

QString MyList::getList()
{
    if (list.isEmpty()) return "*placeholder*";
    list[0][0] = list[0][0].toUpper();
    if (list.isEmpty()) return "empty placeholder";
    QString line = list[0];
    for (int i = 1; i < list.size(); ++i)
    {
        line += ", " + list[i];
    }
    return line;
}

void MyList::deleteLast()
{
    list.takeLast();
    emit valueChanged();
}

void MyList::append(QString word)
{
    if (word.length() > 0)
    {
        list.append(word.toLower());
        emit valueChanged();
    }
}
