import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    id: dialog
    Column{
        width: parent.width
        DialogHeader{}
        Row{
            spacing: 20
            width: parent.width
            TextField{
                id: firstNum
                width: parent.width / 2 - 20
                text: "0"
            }

            TextField{
                id: secondNum
                width: parent.width / 2 - 20
                text: "0"
            }

        }
    }

    onAccepted:{
        if(isNaN((firstNum.text))  || isNaN((secondNum.text)) ){
            console.log("Некорректный ввод")
        }
        else{
            if(!!Number(firstNum.text) && !!Number(secondNum.text))
                console.log(parseInt(firstNum.text) + parseInt(secondNum.text))
            else  console.log("Введено не число")
        }
    }
}


