//import QtQuick 2.15
//import QtQuick.Window 2.15

//Window {
//    width: 640
//    height: 480
//    visible: true


//    Item{
//        width: 100
//        height: 100

//        Component{
//            id: redSquare
//            Rectangle{
//                color: "red"
//                width: 10
//                height: 10
//            }

//        }
//     redSquare {}
//        redSquare { x: 20}

//        Loader{
//            sourceComponent: redSquare
//        }
//        Loader{
//            sourceComponent: redSquare
//            x: 20
//        }
//    }
//}



//import QtQuick 2.15
//import QtQuick.Controls 2.15

//ApplicationWindow {
//    visible: true
//    width: 800
//    height: 600

//    SplitView {
//        anchors.fill: parent

//        Rectangle {
//            width: parent.width * 0.6
//            height: parent.height

//        }

//        Rectangle {
//            width: parent.width * 0.4
//            height: parent.height

//            Column {
//                anchors.centerIn: parent
//                spacing: 20

//                // Sign Up Form
//                Component {
//                    id: signUpForm

//                    Rectangle {
//                        width: 200
//                        height: 100

//                        TextField {
//                            placeholderText: "Username"
//                        }

//                        TextField {
//                            placeholderText: "Password"
//                            echoMode: TextInput.Password
//                        }

//                        Button {
//                            text: "Sign Up"
//                            onClicked: {
//                                // Handle sign up logic here
//                            }
//                        }
//                    }
//                }

//                Loader {
//                    sourceComponent: signUpForm
//                }
//            }
//        }
//    }
//}


//import QtQuick 2.15
//import QtQuick.Controls 2.15

//ApplicationWindow {
//    visible: true
//    width: 800
//    height: 600

//    Rectangle {
//        width: parent.width
//        height: parent.height

//        SplitView {
//            anchors.fill: parent

//            Rectangle {
//                width: parent.width * 0.6
//                height: parent.height

//                // Left side content (if any)
//            }

//            Rectangle {
//                width: parent.width * 0.4
//                height: parent.height

//                color: "darkblue" // Set background color for side window

//                Column {
//                    anchors.centerIn: parent
//                    spacing: 20

//                    TextField {
//                        width: 200
//                        placeholderText: "Username"
//                        font.pixelSize: 20
//                        // Add any additional properties you want for the username field

//                        TextInput {
//                            anchors.fill: parent
//                            //readonly: true
//                            rightPadding: 20
//                            MouseArea {
//                                anchors.fill: parent
//                                onClicked: {
//                                    comboPopup.show()
//                                }
//                            }
//                        }

//                        ComboBox {
//                            id: comboPopup
//                            width: 100
//                            height: 40
//                            currentIndex: -1

//                            model: ListModel {
//                                ListElement { text: "Option 1" }
//                                ListElement { text: "Option 2" }
//                                // Add more options if needed
//                            }

//                            delegate: Item {
//                                width: parent.width
//                                height: 40

//                                Rectangle {
//                                    width: parent.width
//                                    height: parent.height
//                                    color: comboPopup.highlightedIndex === index ? "#dddddd" : "#ffffff"
//                                    border.color: "#cccccc"

//                                    Text {
//                                        anchors.centerIn: parent
//                                        text: model.text
//                                    }

//                                    MouseArea {
//                                        anchors.fill: parent
//                                        onClicked: {
//                                            comboPopup.currentIndex = index
//                                            comboPopup.close()
//                                        }
//                                    }
//                                }
//                            }
//                        }

//                     }

//                    TextField {
//                        width: 200
//                        placeholderText: "Password"
//                        echoMode: TextInput.Password
//                        font.pixelSize: 20
//                        // Add any additional properties you want for the password field
//                    }

//                    Button {
//                        width: 100
//                        height: 40
//                        text: "Sign Up"
//                        font.pixelSize: 16
//                        // Add any additional properties you want for the sign-up button
//                        onClicked: {
//                            // Handle sign up logic here
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
// FINAL INTEGRATED CODE
//import QtQuick 2.15
//import QtQuick.Controls 2.15
//import QtQuick.Window 2.15
//import QtWebEngine 1.15
//import QtQml 2.12

//ApplicationWindow {
//    width: 1024
//    height: 600
//    visible: true

//    Item {
//        width: parent.width
//        height: parent.height

//        WebEngineView {
//            anchors.fill: parent
//            url: "qrc:/mapbuild1.html"
//            webChannel: channel
//        }

//        Rectangle {
//            width: parent.width
//            height: parent.height

//            SplitView {
//                anchors.fill: parent

//                Rectangle {
//                    width: parent.width * 0.6
//                    height: parent.height
//                }

//                Rectangle {
//                    width: parent.width * 0.4
//                    height: parent.height

//                    color: "darkblue"

//                    Column {
//                        anchors.centerIn: parent
//                        spacing: 20

//                        Row {
//                            spacing: 10
//                            TextField {
//                                width: 140
//                                placeholderText: "Username"
//                                font.pixelSize: 20

//                                TextInput {
//                                    anchors.fill: parent
//                                    rightPadding: 20

//                                    MouseArea {
//                                        anchors.fill: parent
//                                        onClicked: {
//                                            comboPopup.show()
//                                        }
//                                    }
//                                }
//                            }

//                            ComboBox {
//                                id: comboPopup
//                                width: 30
//                                height: 30
//                                currentIndex: -1

//                                model: ListModel {
//                                    ListElement { text: "Option 1" }
//                                    ListElement { text: "Option 2" }
//                                }

//                                delegate: Item {
//                                    width: parent.width
//                                    height: 30

//                                    Rectangle {
//                                        width: parent.width
//                                        height: parent.height
//                                        color: comboPopup.highlightedIndex === index ? "#dddddd" : "#ffffff"
//                                        border.color: "#cccccc"

//                                        Text {
//                                            anchors.centerIn: parent
//                                            text: model.text
//                                        }

//                                        MouseArea {
//                                            anchors.fill: parent
//                                            onClicked: {
//                                                comboPopup.currentIndex = index
//                                                comboPopup.close()
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                        }

//                        TextField {
//                            width: 200
//                            placeholderText: "Password"
//                            echoMode: TextInput.Password
//                            font.pixelSize: 20
//                        }

//                        Button {
//                            width: 100
//                            height: 40
//                            text: "Sign Up"
//                            font.pixelSize: 16
//                            onClicked: {
//                                // Handle sign up logic here
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}








import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    Rectangle {
        width: parent.width
        height: parent.height

        SplitView {
            anchors.fill: parent

            Rectangle {
                width: parent.width * 0.6
                height: parent.height

               }

            Rectangle {
                width: parent.width * 0.4
                height: parent.height

                color: "darkblue"

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Row {
                        spacing: 10
                        TextField {
                            width: 140
                            placeholderText: "Username"
                            font.pixelSize: 20

                            TextInput {
                                anchors.fill: parent
                               // readonly: true
                                rightPadding: 20

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        comboPopup.show()
                                    }
                                }
                            }
                        }

                        ComboBox {
                            id: comboPopup
                            width: 30
                            height: 30
                            currentIndex: -1

                            model: ListModel {
                                ListElement { text: "Option 1" }
                                ListElement { text: "Option 2" }
                                // Add more options if needed
                            }

                            delegate: Item {
                                width: parent.width
                                height: 30

                                Rectangle {
                                    width: parent.width
                                    height: parent.height
                                    color: comboPopup.highlightedIndex === index ? "#dddddd" : "#ffffff"
                                    border.color: "#cccccc"

                                    Text {
                                        anchors.centerIn: parent
                                        text: model.text
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            comboPopup.currentIndex = index
                                            comboPopup.close()
                                        }
                                    }
                                }
                            }
                        }
                    }

                    TextField {
                        width: 200
                        placeholderText: "Password"
                        echoMode: TextInput.Password
                        font.pixelSize: 20
                    }

                    Button {
                        width: 100
                        height: 40
                        text: "Sign Up"
                        font.pixelSize: 16
                        onClicked: {
                            // Handle sign up logic here
                        }
                    }
                }
            }
        }
    }
}




























