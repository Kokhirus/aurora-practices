/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Реализация практики номер 4 project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0
import module.counter 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All
    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Pr4")
        extraContent.children: [
            Button {
                objectName: "2ndTaskButton"
                Text {
                    text: "To the 2nd task"
                    anchors.centerIn: parent
                }
                anchors.verticalCenter: parent.verticalCenter


                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }
    Column {
        spacing: 2
        anchors.centerIn: parent

        TypeCounter {
            id:typecounter
            onValueChanged: counterlabel.text = typecounter.getValue()
        }

        Text {
            id:counterlabel
            text:typecounter.getValue()
            anchors.horizontalCenter:parent.horizontalCenter
        }

        Button {
            objectName: "incrementButton"
            Text {
                text: "+1"
                anchors.centerIn: parent
            }
            anchors.horizontalCenter:parent.horizontalCenter

            onClicked: typecounter.incrementValue()
        }

        Button {
            objectName: "resetButton"
            Text {
                text: "Reset"
                anchors.centerIn: parent
            }
            anchors.horizontalCenter:parent.horizontalCenter

            onClicked: typecounter.resetValue()
        }
    }
}
