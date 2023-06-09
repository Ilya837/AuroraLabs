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

    property int tol: 30
    property color nextColor: "blue"
    property int count: 0
    property int countB: 0
    property int countR: 0

    Repeater{
        id: hor
        anchors.fill: parent
        model: 20

        delegate:
            Rectangle{
            id: rec
                border.color: "black"
                border.width: 1
                color: "white"
                height: tol
                width : (hor.width - 5 * height) / 4;

                x: height + ((width + height) * (index %4))
                y: Math.floor( index/4) * (width + height)

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.color != "#ff0000" && parent.color != "#0000ff"){
                            parent.color = nextColor
                            //console.log(nextColor)
                            var flag = true


                            if(index > 3){
                                if(hor.itemAt(index - 4).color != "#ffffff" ){

                                    if(vert.itemAt(index - 4 + Math.floor((index-4) / 4)).color != "#ffffff"){

                                        if(vert.itemAt(index - 3 + Math.floor((index-4) / 4)).color != "#ffffff"){
                                            sqr.itemAt(index - 4).color = parent.color;
                                            flag = false
                                            if(parent.color == "#ff0000") countR++
                                            else countB++
                                            count++
                                        }
                                    }
                                }
                            }


                            if(index < 16){
                                if(hor.itemAt(index + 4).color != "#ffffff" ){

                                    if(vert.itemAt(index  + Math.floor((index) / 4)).color != "#ffffff"){

                                        if(vert.itemAt(index + 1 + Math.floor((index) / 4)).color != "#ffffff"){
                                            sqr.itemAt(index).color = parent.color;
                                            flag = false
                                            if(parent.color == "#ff0000") countR++
                                            else countB++
                                            count++
                                        }
                                    }
                                }
                            }

                            if(flag){
                                if(nextColor =="#ff0000"){ nextColor = "blue"}
                                else{ nextColor = "red"}
                            }
                            else{
                                if(count == 16){
                                    if(countB > countR) lable.text =  "Blue wins"
                                    if(countB < countR) lable.text =  "Red wins"
                                    if(countB === countR) lable.text =  "no wins"
                                    rest.visible = true
                                }
                                }



                        }
                    }
                }


        }
    }

    Repeater{
        id: vert
        anchors.fill: parent
        model: 20

        delegate:
            Rectangle{
            id: rec2
                border.color: "black"
                border.width: 1
                color: "white"
                height:  (vert.width - 5 * width) / 4
                width :  tol

                x: (index%5) * (width + height)
                y:  width + ((width + height) * Math.floor(index/5))

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(parent.color != "#ff0000" && parent.color != "#0000ff"){
                            parent.color = nextColor
                            //console.log(nextColor)
                            var flag = true


                            if((index + 1) % 5 != 0){
                                if(vert.itemAt(index +1).color  != "#ffffff" ){
                                    //console.log("1")
                                    if(hor.itemAt(index - Math.floor(index / 5)).color != "#ffffff"){
                                        //console.log("2")
                                        if(hor.itemAt(index + 4 - Math.floor(index / 5)).color != "#ffffff"){
                                            //console.log("3")
                                            sqr.itemAt(index - Math.floor(index / 5)).color = parent.color;
                                            flag = false
                                            if(parent.color == "#ff0000") countR++
                                            else countB++
                                            count++
                                        }
                                    }
                                }
                            }

                            if((index ) % 5 != 0){
                                if(vert.itemAt(index -1).color  != "#ffffff" ){
                                    //console.log("1")
                                    if(hor.itemAt(index - 1 - Math.floor(index / 5)).color != "#ffffff"){
                                        //console.log("2")
                                        if(hor.itemAt(index + 3 - Math.floor(index / 5)).color != "#ffffff"){
                                            //console.log("3")
                                            sqr.itemAt(index - 1 - Math.floor(index / 5)).color = parent.color;
                                            flag = false
                                            if(parent.color == "#ff0000") countR++
                                            else countB++
                                            count++
                                        }
                                    }
                                }
                            }

                            if(flag){

                                if(nextColor =="#ff0000"){ nextColor = "blue"}
                                else{ nextColor = "red"}
                            }
                            else{
                                if(count == 16){
                                    if(countB > countR) lable.text =  "Blue wins"
                                    if(countB < countR) lable.text =  "Red wins"
                                    if(countB === countR) lable.text =  "no wins"
                                    rest.visible = true
                                }

                            }





                        }
                    }
                }

        }


    }

    Repeater{
        id: sqr
        model: 16
        anchors.fill: parent

        delegate: Rectangle{
            color: "black"
            width: (hor.width - 5 * tol) / 4;
            height: width
            x: tol + (width + tol) * (index % 4)
            y : tol + (width + tol) * Math.floor(index / 4)
        }

    }

    Label{
        id: lable
        anchors.horizontalCenter: parent.horizontalCenter
        y: 800

        text: ""
    }

    Button{
        id: rest
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false
        y: 1000
        width: 300
        height: 100
        text: "Restart"

        onClicked: {
            visible = false
            count = 0
            countB = 0
            countR = 0

            for(var i = 0; i< 20; i++){
                vert.itemAt(i).color = "white"
                hor.itemAt(i).color = "white"

            }
            for( i = 0; i< 16; i++){
                sqr.itemAt(i).color = "Black"
            }

            lable.text = ""
        }
    }

}
