import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    property alias text1: textf.text
    Column{
        width: parent.width
        DialogHeader{}
        TextField{
            id:textf
            width: parent.width

        }
    }
}
