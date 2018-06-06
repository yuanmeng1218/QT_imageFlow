import QtQuick 2.0

Item {
    id:coverFlow

    property ListModel model
    property int itemCount: 5
    Rectangle{
        anchors.fill:parent
        color: "black"
    }
    PathView{
        id:pathView

        model:coverFlow.model
        delegate: MyDelegate{}
        path:coverFlowPath
        pathItemCount: coverFlow.itemCount
        anchors.fill: parent
        preferredHighlightBegin: 0.5//指定当前item在view中的首选起始位置
        preferredHighlightEnd: 0.5//指定当前item在view中的首选结束位置
    }

    Path{
        id:coverFlowPath
        startX: coverFlow.width/4
        startY: coverFlow.height/3

        PathAttribute{name:"iconZ";value:0}
        PathAttribute{name:"iconAngle";value:70}
        PathAttribute{name:"iconScale";value:0.6}

        PathLine{x:coverFlow.width*0.8;y:coverFlow.height/3;}
        PathAttribute{name:"iconZ";value:100}
        PathAttribute{name:"iconAngle";value:0}
        PathAttribute{name:"iconScale";value:1.0}

        PathAttribute{name:"iconZ";value:0}
        PathAttribute{name:"iconAngle";value:-70}
        PathAttribute{name:"iconScale";value:0.6}
        PathPercent{value:1.0}
    }
}
