/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the Моё приложение для ОС Аврора project.
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

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"

        Column{
            y: 120
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width

        TextField{
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            height: 110

            label: "Введите число"
            placeholderText: "0"
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            onTextChanged: {
                var liter = text.charAt(text.length-1)
                if(liter < '0' || liter > '9')
                    if(text.charAt(text.length-1) != '-' || (text.length != 1) )text = text.substring(0,text.length-1);
            }

        }

        Button{

            anchors.horizontalCenter: parent.horizontalCenter
            height: 120
            text: "Нажми"
            onClicked: {
                console.log("Кнопку нажали")
                down = true;
            }

        }

        Button{

            anchors.horizontalCenter: parent.horizontalCenter
            height: 120
            text: "Нажми"
            onDownChanged: {
                if(down) label1.text = "Нажата"
                else label1.text = "Отжата"
            }


        }

        Label{
            id: label1
            anchors.horizontalCenter: parent.horizontalCenter
            height: 50
        }

        Button{

            anchors.horizontalCenter: parent.horizontalCenter
            height: 120
            text: "0"
            onClicked: {text =  "" +(Number(text) +1)}


        }

        Row{
            height: 120
            spacing: 50
            Button{
                height: 120
                text: "Date"
                onClicked: pageStack.push("DatePage.qml")
            }
            Button{

                height: 120
                text: "List"
                onClicked: pageStack.push("TextPage.qml")
            }
        }




     }
   }
}
