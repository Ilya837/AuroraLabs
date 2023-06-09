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
    id: page
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
    }

    ListModel{
        id: circleModel
        ListElement{  color1: "red"; color2: "black"; radius1: 100;  pause1: 3 }
        ListElement{  color1: "yellow";color2: "black"; radius1: 100 ;  pause1: 1}
        ListElement{  color1: "green";color2: "black"; radius1: 100 ;  pause1: 1}
    }

    Column{
        id: col
        anchors.fill: parent
        spacing: 20

        SilicaListView{
            id: lights
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: 600
            model: circleModel

            delegate: Rectangle{
                    id: rect
                    width: 2 * radius1
                    height: width
                    anchors.horizontalCenter: parent.horizontalCenter
                    radius: radius1


                    SequentialAnimation{
                        running: true
                        loops: Animation.Infinite

                        PropertyAction { target: rect; property: "state"; value: "noColor";}

                        PauseAnimation {duration: 2000 * index }

                        PropertyAction { target: rect; property: "state"; value: "Color"}

                        PauseAnimation { duration: 2000 }

                        PropertyAction{ target: rect; property: "state"; value: "noColor"}

                        PauseAnimation {duration: 2000 * pause1}

                        PropertyAction {target: rect; property: "state"; value: "Color"}

                        PauseAnimation {duration: 2000 * ((index ) % 2) }
                    }

                    states: [

                        State{
                            name: "Color"
                            PropertyChanges{
                                target: rect
                                color: color1
                                }

                            },
                        State{
                            name: "noColor"
                            PropertyChanges{
                                target: rect
                                color: color2
                                }
                            }

                    ]


                    }


        }

        Rectangle{
            id:mipl
            height: 100
            width: 100
            Image {
                anchors.fill: parent
                source: "mipl.jpg"
            }

            SequentialAnimation{
                running: true
                loops: Animation.Infinite

                PauseAnimation {duration: 4000  }

                NumberAnimation { target: mipl; property: "x"; to: page.width - mipl.width; duration: 2000}

                PauseAnimation {duration: 6000  }

                NumberAnimation { target: mipl; property: "x"; to: 0; duration: 2000}

                PauseAnimation {duration: 2000  }

                }


        }


}

}
