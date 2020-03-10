import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import GetSystemInfoAPI 1.0
SystemWindow {
    id: infoWindow
    title: "info"

    TitleLeftBar{
        id: leftBar
        titleIcon: "images/wvga/back_icon_nor.png"
        titleName: "系统信息"
        titleNameSize: 20
        titleIconWidth:120
        titleIconHeight: 30
        onLeftBarClicked: {
            infoWindow.close()
        }

    }
    GetSystemInfo{
        id:getSyetemInfo
//        Component.onCompleted:get_cpu_info()
    }
    TitleRightBar{
        anchors{
            top: parent.top
            right: parent.right
            rightMargin: 10
        }
    }
    Rectangle{
        anchors{
            top: parent.top
            topMargin: 50
        }
        color:"transparent"
        width:750
        height:430
        SwipeView {
            id: view
            orientation:Qt.Vertical
            anchors.fill: parent
            interactive: false
            anchors{
                top: parent.top
                left: navigationbar.left
                leftMargin: 150
            }
            Item {
                id: firstPage

                Rectangle{
                    width:630
                    height:419
                    color:"transparent"

                    GridLayout {
                        width:630
                        height:300
                        columns:5
                        rows:18
                        columnSpacing:10
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 30
                        }
                        Text{
                            text: "基本信息"
                            font.pointSize: 15;
                            color: "white"
                            Layout.row:0
                            Layout.column:0
                        }

                        Text{
                            id:memory
                            text: "可用内存"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:0
                        }
                        Text{
                            id:memory_value
                            text: "200MB"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:1
                            anchors{
                                left: memory.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:ip
                            text: "IP 地址"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:0
                        }
                        Text{
                            id:ip_value
                            text: "192.168.30.1"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:1
                            anchors{
                                left: ip.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:resolution
                            text: "屏幕分辨率"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:0
                        }
                        Text{
                            id:resolution_value
                            text: "800*480"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:1
                            anchors{
                                left: resolution.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:op
                            text: "操作系统"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:4
                            Layout.column:0
                        }
                        Text{
                            id:op_value
                            text: "Linux 4.1.18"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:4
                            Layout.column:1
                            anchors{
                                left: op.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:run_time
                            text: "系统运行时间"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:5
                            Layout.column:0
                        }
                        Text{
                            id:run_time_value
                            text: "11分钟"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:5
                            Layout.column:1
                            anchors{
                                left: run_time.left
                                leftMargin: 120
                            }

                        }
                        Text{
                            id:total_run_time
                            text: "总运行时间"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:6
                            Layout.column:0
                        }
                        Text{
                            id:total_run_time_value
                            text: "2小时13分"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:6
                            Layout.column:1
                            anchors{
                                left: total_run_time.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:battery_power
                            text: "电池电量"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:7
                            Layout.column:0
                        }
                        Text{
                            id:battery_power_value
                            text: "86%"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:7
                            Layout.column:1
                            anchors{
                                left: battery_power.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:create
                            text: "创建"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:8
                            Layout.column:0

                        }
                        Text{
                            id:create_value
                            text: "Buildroot "
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:8
                            Layout.column:1
                            anchors{
                                left: create.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:compile_time
                            text: "编译"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:9
                            Layout.column:0
                        }
                        Text{
                            id:compile_time_value
                            text: "2020-09-15 "
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:9
                            Layout.column:1
                            anchors{
                                left: compile_time.left
                                leftMargin: 120
                            }
                        }
                        Image{
                            id:cpu_icon
                            source: "images/wvga/system/cpu.png"
                            Layout.row:11
                            Layout.rowSpan: 3
                            Layout.column:0
                            anchors{
                                top: compile_time.bottom
                                topMargin: 40
                            }
                        }
                        Rectangle{
                            id:cpu_processbar_ectangle
                            width: 430
                            height: 25
                            color: "transparent"
                            anchors{
                                top: compile_time_value.bottom
                                topMargin: 40

                                left: cpu_icon.left
                                leftMargin: 50

                            }
                            Text{
                                id:cpu_value
                                text:qsTr("系统CPU使用率: ")+cpu_percent+"%"
                                font.pointSize: 5;
                                color: "white"
                                Layout.row:9
                                Layout.column:1
                                anchors{
                                    top: parent.top
                                    left:parent.top
                                }
                            }
                            Rectangle {
                                id:cpu_processbar
                                width: 402
                                height: 8
                                radius:10           //圆角角度
                                color: "transparent"
                                border.color: "transparent"
                                property int value: 80
                                Layout.row:11
                                Layout.rowSpan: 3
                                Layout.column:1
                                Image {
                                    id: processbar
                                    source: "images/wvga/system/processbar.png"
                                }
                                Rectangle {
                                  width: parent.width * cpu_percent / 100
                                  height:parent.height // percentage
                                  color: "#0CAA00"
                                  radius:10
    //                              anchors.bottom: parent.bottom
                                }
                                anchors{
                                    bottom: parent.bottom

                                }

                            }

                        }


                        Image{
                            id:disk_icon
                            source: "images/wvga/system/disk.png"
                            Layout.row:14
                            Layout.rowSpan: 3
                            Layout.column:0
                            anchors{
                                top: cpu_icon.bottom
                                topMargin: 30
                            }
                        }
                        Rectangle{
                            width: 430
                            height: 25
                            color: "transparent"
                            anchors{
                                top: cpu_icon.bottom
                                topMargin: 30

                                left: disk_icon.left
                                leftMargin: 50

                            }
                            Text{
                                id:disk_value
                                text:qsTr("系统内存使用率: ")+"128MB/500MB"+"-"+"30%"
                                font.pointSize: 5;
                                color: "white"
                                Layout.row:9
                                Layout.column:1
                                anchors{
                                    top: parent.top
                                    left:parent.top
                                }
                            }
                            Rectangle {
                                id:disk_processbar
                                width: 402
                                height: 8
                                radius:10           //圆角角度
                                color: "transparent"
                                border.color: "transparent"
                                property int value: 40
                                Layout.row:11
                                Layout.rowSpan: 3
                                Layout.column:1
                                Image {
                                    id: processbar_bg
                                    source: "images/wvga/system/processbar.png"
                                }
                                Rectangle {
                                  width: parent.width * parent.value / 100
                                  height:parent.height // percentage
                                  color: "#0CAA00"
                                  radius:10
    //                              anchors.bottom: parent.bottom
                                }
                                anchors{
                                    bottom: parent.bottom

                                }

                            }

                        }

                    }
                }

            }
            Item {
                id: secondPage
                Rectangle{
                    width:630
                    height:419
                    color:"transparent"
                    anchors{
                        top: parent.top
                        left: parent.left
                        leftMargin: 30
                    }
                    GridLayout {
                        width:630
                        height:150
                        columns:5
                        rows:5
                        columnSpacing:10
                        Text{
                            text: qsTr("网络信息")
                            font.pointSize: 15;
                            color: "white"
                            Layout.row:0
                            Layout.column:0
                        }

                        Text{
                            id:mac
                            text: qsTr("网卡MAC地址")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:0
                        }
                        Text{
                            id:mac_value
                            text: qsTr("30:4c:5d:22:4f:ef")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:1
                            anchors{
                                left: mac.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:ip_text
                            text: qsTr("IP地址")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:0
                        }
                        Text{
                            id:ip_text_value
                            text: qsTr("192.168.30.1")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:1
                            anchors{
                                left: ip_text.left
                                leftMargin: 120
                            }
                        }

                        Text{
                            id:speed
                            text: qsTr("速率 ")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:0
                        }
                        Text{
                            id:speed_value
                            text: qsTr("100")+"MB/s"
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:1
                            anchors{
                                left: speed.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:net_connect
                            text: qsTr("是否联网")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:4
                            Layout.column:0
                        }
                        Text{
                            id:net_connect_value
                            text: qsTr("已联网")
                            font.pointSize: 8;
                            color: "green"
                            Layout.row:4
                            Layout.column:1
                            anchors{
                                left: net_connect.left
                                leftMargin: 120
                            }
                        }
                    }
                }
            }
            Item {
                id: thirdPage
                Rectangle{
                    width:630
                    height:419
                    color:"transparent"
                    anchors{
                        top: parent.top
                        left: parent.left
                        leftMargin: 30
                    }
                    GridLayout {
                        width:630
                        height:100
                        columns:5
                        rows:5
                        columnSpacing:10
                        Text{
                            text: qsTr("版权信息")
                            font.pointSize: 15;
                            color: "white"
                            Layout.row:0
                            Layout.column:0
                        }

                        Text{
                            id:copyright
                            text: qsTr("版权声明")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:0
                        }
                        Text{
                            id:copyright_value
                            text: qsTr("Copyright © 2020 MYIR Electronics Limited. All rights reserved.")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:1
                            Layout.column:1
                            anchors{
                                left: copyright.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:qt_version
                            text: qsTr("QT版本")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:0
                        }
                        Text{
                            id:qt_version_value
                            text: qsTr("5.12.0")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:2
                            Layout.column:1
                            anchors{
                                left: qt_version.left
                                leftMargin: 120
                            }
                        }
                        Text{
                            id:thirdpart_copyright
                            text: qsTr("第三方版权声明")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:0
                        }
                        Text{
                            id:thirdpart_copyright_value
                            text: qsTr("Copyright ©2020 [xxxxx] Powered By [xxxxx] Version 1.0.0 ")
                            font.pointSize: 8;
                            color: "white"
                            Layout.row:3
                            Layout.column:1
                            anchors{
                                left: thirdpart_copyright.left
                                leftMargin: 120
                            }
                        }
                    }

                }
            }
        }
        Rectangle{
            id:navigationbar
            width: 122;
            height: 419;
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 20
            }
            Image{
                anchors.fill: parent
                source: "images/wvga/system/navigation.png"
            }
            color:"transparent"
            Column{
                id:coloumn;
                Rectangle{
                    id:basicinfo
                    width: 122;
                    height: 64;
                    color:"transparent"
                    Image{
                        id: basicinfo_icon_bg
//                        anchors.fill: parent
                        source: 'images/wvga/system/button-bg.png'
                    }
                    Image{

                        id: basicinfo_icon
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter : parent.horizontalCenter
                        source: 'images/wvga/system/basic1.png'
                    }
                    Text{
                        id:cake
                        text: qsTr("基本信息")
                        font.pointSize: 6;
                        color: "white"
                        anchors{
                            horizontalCenter:    parent.horizontalCenter
                            top: basicinfo_icon.bottom

                        }


                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            copyright_icon.source = 'images/wvga/system/copyright.png'
                            netinfo_icon.source = "images/wvga/system/net.png"
                            basicinfo_icon.source = 'images/wvga/system/basic1.png'
                            netinfo_icon_bg.source= ''
                            basicinfo_icon_bg.source='images/wvga/system/button-bg.png'
                            copyright_icon_bg.source=''
                            console.log("基本信息")
                            view.currentIndex = 0
                        }
                    }
                }
                Rectangle{
                    width: 122;
                    height: 64;
                    color:"transparent"
                    Image{
                        id: netinfo_icon_bg
//                        anchors.fill: parent
                        source: ''
                    }
                    Image{
                        id: netinfo_icon
                        anchors.horizontalCenter : parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        source: 'images/wvga/system/net.png'
                    }
                    Text{
                        id:netinfo
                        text: qsTr("网络信息")
                        font.pointSize: 6;
                        color: "white"
                        anchors{
                            horizontalCenter:    parent.horizontalCenter
                            top: netinfo_icon.bottom

                        }

                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            copyright_icon.source = 'images/wvga/system/copyright.png'
                            netinfo_icon.source = 'images/wvga/system/net1.png'
                            basicinfo_icon.source = 'images/wvga/system/basic.png'
                            netinfo_icon_bg.source= 'images/wvga/system/button-bg.png'
                            basicinfo_icon_bg.source=''
                            copyright_icon_bg.source=''
                            console.log("网络信息")
                            view.currentIndex = 1
                        }
                    }
                }
                Rectangle{
                    width: 122;
                    height: 64;
                    color:"transparent"
                    Image{
                        id: copyright_icon_bg
//                        anchors.fill: parent
                        source: ''
                    }
                    Image{
                        id: copyright_icon
                        anchors.horizontalCenter : parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        source: 'images/wvga/system/copyright.png'
                    }
                    Text{
                        id:copyright_button
                        text: qsTr("版权信息")
                        font.pointSize: 6;
                        color: "white"
                        anchors{
                            horizontalCenter:    parent.horizontalCenter
                            top: copyright_icon.bottom
                        }

                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {


                            copyright_icon.source = 'images/wvga/system/copyright1.png'
                            netinfo_icon.source = "images/wvga/system/net.png"
                            basicinfo_icon.source = 'images/wvga/system/basic.png'
                            netinfo_icon_bg.source= ''
                            basicinfo_icon_bg.source=''
                            copyright_icon_bg.source='images/wvga/system/button-bg.png'
                            console.log("版权信息")
                            view.currentIndex = 2;
                        }
                    }
                }
            }
        }
    }
    property int cpu_percent:50
    property int mem_percent:50
    property string mem_usage:""
    Timer{
        id:countdown
        interval:1000;running:true;repeat: true

        onTriggered: {
            getSyetemInfo.get_cpu_info()
            cpu_percent = getSyetemInfo.read_cpu_percent()
            getSyetemInfo.get_memory_info()
            mem_percent = getSyetemInfo.read_memory_percent()
            mem_usage = getSyetemInfo.read_memory_usage()
//            console.log(mem_percent)
        }
    }

}

