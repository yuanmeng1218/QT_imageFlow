import QtQuick 2.0
import QtGraphicalEffects 1.0
Item {
    id:delegateItem
    width:320
    height:450
    z:PathView.iconZ
    scale: PathView.iconScale

    Column{
        id:delegate
        spacing: 10

        Image{
            id:dlgImg
            source:url
            width:delegateItem.width
            height: delegateItem.height
        }
        Item{
            width: delegateItem.width
            height: delegateItem.height

            Image{
                id:reflection
                width: delegateItem.width
                height: delegateItem.height
                source: dlgImg.source
                opacity: 0.2//透明性
                transform: Scale{
                    yScale:-1//翻转
                    origin.y:delegateItem.height/2
                }
            }
            LinearGradient{
                width:delegateItem.width
                height:delegateItem.height
                gradient:Gradient{
                    //color获取或设置渐变停止点的颜色。position获取渐变停止点在渐变向量中的位置。
                    GradientStop{position:0.0;color: Qt.rgba(0,0,0,0.1)}//rgba(0,0,0,1)则表示完全不透明度的黑色
                    GradientStop{position: 0.4;color: Qt.rgba(0,0,0,1)}
                }
            }
        }

    }


    transform: Rotation{
        origin.x:dlgImg.width/2
        origin.y:dlgImg.height/2
        axis{x:0;y:1;z:0}
        angle: delegateItem.PathView.iconAngle
    }
}
