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
import QtQuick.XmlListModel 2.0

Page {
    objectName: "mainPage4"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"

    }
            function get1(n){
            var currentDate = new Date()
                currentDate.setDate(currentDate.getDate() - n)
                return currentDate

            }



            XmlListModel{
                id:xmlListModel1
                property date date1: get1(0)



                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel2
                property var date1: get1(1)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel3
                property var date1: get1(2)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel4
                property var date1: get1(3)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel5
                property var date1: get1(4)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel6
                property var date1: get1(5)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel7
                property var date1: get1(6)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel8
                property var date1: get1(7)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel9
                property var date1: get1(8)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }

            XmlListModel{
                id:xmlListModel10
                property var date1: get1(9)


                source: "http://www.cbr.ru/scripts/XML_daily.asp?date_req="  + Qt.formatDate(date1,"dd/MM/yyyy")
                query: "/ValCurs/Valute"
                XmlRole{ name: "name"; query: "Name/string()" ;}
                XmlRole{ name: "rate"; query: "Value/string()"; }

            }











//    Label{
//        id: lab1
//        width : 100
//        height: 100
//        text: "Нажми"

//        MouseArea{
//            onClicked: { var date1 = new Date( )
//                date1.setDate(date1.getDate())


//                console.log( "http://www.cbr.ru/scripts/XML_daily.asp?date_req=" + Qt.formatDate(date1,"dd/MM/yyyy")) ;

//                var count1 = 0
//                for(var i = 0; i< xmlListModel1.count;i++){
//                    console.log(count1)
//                    count1 += Number( xmlListModel1.get(i).rate)
//                }
//                console.log(count1)
//                lab1.text = count1
//}
//        }

//    }





        SilicaListView{
            id: list1
            model: xmlListModel1

            width: parent.width
            height: parent.height
            y: 100
            x: 0
            anchors.fill: parent



            delegate: Text{
                        text: name + " \n" + rate

                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                var sum = 0

//                                console.log(Qt.formatDate(xmlListModel1.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel2.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel3.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel4.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel5.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel6.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel7.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel8.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel9.date1,"dd/MM/yyyy"))
//                                console.log(Qt.formatDate(xmlListModel10.date1,"dd/MM/yyyy"))


                                sum = parseFloat( xmlListModel1.get(index).rate.replace(",","."))

                                sum +=parseFloat( xmlListModel2.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel3.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel4.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel5.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel6.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel7.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel8.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel9.get(index).rate.replace(",","."))
                                sum +=parseFloat( xmlListModel10.get(index).rate.replace(",","."))
                                //console.log(sum)
                                sum = sum / 10
                                console.log(sum)
                                if(sum < parseFloat( xmlListModel1.get(index).rate.replace(",",".")))
                                    parent.text += " курс поднялся"
                                if(sum > parseFloat( xmlListModel1.get(index).rate.replace(",",".")))
                                    parent.text += " курс опустился"
                                if(sum === parseFloat( xmlListModel1.get(index).rate.replace(",",".")))
                                    parent.text += " курс не поменялся"
                            }
                        }
                    }

        }
    }















