import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1100
    height: 600
    ListModel{
            id:model
            ListElement{url:"qrc:/images/01.jpg"}
            ListElement{url:"qrc:/images/02.jpg"}
            ListElement{url:"qrc:/images/03.jpg"}
            ListElement{url:"qrc:/images/04.png"}
            ListElement{url:"qrc:/images/05.jpg"}
    }
    CoverFlow{
        anchors.fill:parent
        model:model
    }
}
