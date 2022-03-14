// Copyright (c) 2022 Ultimaker B.V.
// Uranium is released under the terms of the LGPLv3 or higher.

import QtQuick 2.7
import QtQuick.Controls 2.3

import UM 1.5 as UM

Button
{
    id: control
    padding: 0

    background: Item {}

    contentItem: Rectangle
    {
        implicitWidth: Math.round(UM.Theme.getSize("button").width * 0.75)
        implicitHeight: implicitWidth
        radius: Math.round(width * 0.5)

        color:
        {
            if(control.hovered)
            {
                return UM.Theme.getColor("toolbar_button_hover")
            }
            return UM.Theme.getColor("toolbar_background")
        }

        UM.RecolorImage
        {
            anchors.centerIn: parent
            implicitWidth: Math.round(UM.Theme.getSize("button").width / 2)
            implicitHeight: implicitWidth
            source: UM.Theme.getIcon("Hamburger")
            color: UM.Theme.getColor("background")
        }
    }

}