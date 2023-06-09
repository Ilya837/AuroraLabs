import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog{
    property alias dat: datepick.date
    Column{
        width: parent.width
        DialogHeader{}
        DatePicker{
            id: datepick
            date: new Date(Date.now())
        }
    }
}
