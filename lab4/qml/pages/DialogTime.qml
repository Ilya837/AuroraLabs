import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    property alias time1: timepick.timeText
    Column{
        width: parent.width
        DialogHeader{}
        Item{
            width: parent.width
            height: timepick.height
            TimePicker{
                id: timepick

            }
            Label{
                anchors.centerIn: timepick
                text: timepick.timeText
            }
        }
    }
}
