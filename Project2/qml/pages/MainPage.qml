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
import  QtQuick.Layouts 1.1



    Page {
        objectName: "mainPage"
        allowedOrientations: Orientation.All



        PageHeader {
            objectName: "pageHeader"
            title: qsTr("Laba2")

        }

       Column{
           x:0
           y:0
           width: parent.width
           height: parent.height


            Item{
                width: parent.width
                height: parent.width  * 3 /5 + 100
                property double sqrlength: parent.width / 2.5

                Rectangle{
                    id: rRec
                    width: parent.sqrlength
                    height: parent.sqrlength
                    color: "red"
                    x: parent.x
                    y: parent.y

                }

                Rectangle{
                    id: gRec
                    width: parent.sqrlength
                    height: parent.sqrlength
                    color: "green"
                    x: rRec.x + parent.sqrlength / 2
                    y: rRec.y + parent.sqrlength / 2

                }

                Rectangle{
                    id: bRec
                    width: parent.sqrlength
                    height: parent.sqrlength
                    color: "blue"
                    x: rRec.x + parent.sqrlength + parent.sqrlength / 2
                    y: parent.x
                    Text {
                        id: name
                        color: "white"
                        text: qsTr("Квадрат")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

            }


            Row{
                height: 40
                width: parent.width
                spacing: 20
                property int count: 3
                property int buttonwidth: (width - spacing * (count-1)) / count

                Button{
                    height: parent.height
                    width: parent.buttonwidth
                    text: "Animation Page"
                    onClicked: pageStack.push("SecondPage.qml")
                }

                Button{
                    height: parent.height
                    width: parent.buttonwidth
                    text: "Squares"
                    onClicked: pageStack.push("ColGridExemple.qml")
                }

                Button{
                    height: parent.height
                    width: parent.buttonwidth
                    text: "Sum Dialog"
                    onClicked: pageStack.push("SumDialog.qml")
                }

            }

    }


}
