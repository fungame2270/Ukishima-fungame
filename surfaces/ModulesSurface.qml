pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import "../Singletons"
import "../components"

/**
 * 器 TOGGLE MODULES sub-surface: which optional items the expanded pill's hover
 * row draws. The workspaces, the clock and weather always draw, so these
 * switches hide everything else — the wifi/bluetooth/battery cluster,
 * notifications, mixer, clipboard and the tool modules.
 *
 * The Appearance cog is deliberately absent: it is the only way into settings,
 * and a switch that hides the only door back to itself is the one-way door the
 * dock row on the DISPLAY surface warns about. Reached from DISPLAY and folds
 * back to it on the back chevron or an empty click.
 */
SettingsSurface {
    id: root

    backSurface: "display"
    implicitHeight: content.implicitHeight

    rows: [
        { item: wifiRow, kind: "toggle", get: function () { return Flags.pillShowWifi; }, set: function (v) { Flags.pillShowWifi = v; } },
        { item: btRow, kind: "toggle", get: function () { return Flags.pillShowBluetooth; }, set: function (v) { Flags.pillShowBluetooth = v; } },
        { item: batteryRow, kind: "toggle", get: function () { return Flags.pillShowBattery; }, set: function (v) { Flags.pillShowBattery = v; } },
        { item: notifsRow, kind: "toggle", get: function () { return Flags.pillShowNotifications; }, set: function (v) { Flags.pillShowNotifications = v; } },
        { item: mixerRow, kind: "toggle", get: function () { return Flags.pillShowMixer; }, set: function (v) { Flags.pillShowMixer = v; } },
        { item: clipRow, kind: "toggle", get: function () { return Flags.pillShowClipboard; }, set: function (v) { Flags.pillShowClipboard = v; } },
        { item: sysmonRow, kind: "toggle", get: function () { return Flags.pillShowSysmon; }, set: function (v) { Flags.pillShowSysmon = v; } },
        { item: recRow, kind: "toggle", get: function () { return Flags.pillShowRecorder; }, set: function (v) { Flags.pillShowRecorder = v; } },
        { item: timerRow, kind: "toggle", get: function () { return Flags.pillShowTimer; }, set: function (v) { Flags.pillShowTimer = v; } },
        { item: wallRow, kind: "toggle", get: function () { return Flags.pillShowWallpaper; }, set: function (v) { Flags.pillShowWallpaper = v; } },
        { item: scratchRow, kind: "toggle", get: function () { return Flags.pillShowScratch; }, set: function (v) { Flags.pillShowScratch = v; } },
        { item: launchRow, kind: "toggle", get: function () { return Flags.pillShowLauncher; }, set: function (v) { Flags.pillShowLauncher = v; } },
        { item: emojiRow, kind: "toggle", get: function () { return Flags.pillShowEmoji; }, set: function (v) { Flags.pillShowEmoji = v; } },
        { item: powerRow, kind: "toggle", get: function () { return Flags.pillShowPower; }, set: function (v) { Flags.pillShowPower = v; } }
    ]

    Column {
        id: content
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0

        SettingsHeader {
            s: root.s
            glyph: "器"
            title: "TOGGLE MODULES"
            showBack: true
        }

Item { width: 1; height: 10 * root.s }
        SettingsRow {
            id: wifiRow
            surface: root
            name: "Wi-Fi"
            icon: "wifi"

            LinkToggle {
                s: root.s
                on: Flags.pillShowWifi
                onToggled: Flags.pillShowWifi = !Flags.pillShowWifi
            }
        }

        SettingsRow {
            id: btRow
            surface: root
            name: "Bluetooth"
            icon: "bluetooth"

            LinkToggle {
                s: root.s
                on: Flags.pillShowBluetooth
                onToggled: Flags.pillShowBluetooth = !Flags.pillShowBluetooth
            }
        }

        SettingsRow {
            id: batteryRow
            surface: root
            name: "Battery"
            icon: "bolt"

            LinkToggle {
                s: root.s
                on: Flags.pillShowBattery
                onToggled: Flags.pillShowBattery = !Flags.pillShowBattery
            }
        }

        SettingsRow {
            id: notifsRow
            surface: root
            name: "Notifications"
            icon: "inbox"

            LinkToggle {
                s: root.s
                on: Flags.pillShowNotifications
                onToggled: Flags.pillShowNotifications = !Flags.pillShowNotifications
            }
        }

        SettingsRow {
            id: mixerRow
            surface: root
            name: "Mixer"
            icon: "mixer"

            LinkToggle {
                s: root.s
                on: Flags.pillShowMixer
                onToggled: Flags.pillShowMixer = !Flags.pillShowMixer
            }
        }

        SettingsRow {
            id: clipRow
            surface: root
            name: "Clipboard"
            icon: "clipboard"

            LinkToggle {
                s: root.s
                on: Flags.pillShowClipboard
                onToggled: Flags.pillShowClipboard = !Flags.pillShowClipboard
            }
        }

        SettingsRow {
            id: sysmonRow
            surface: root
            name: "System monitor"
            icon: "monitor"

            LinkToggle {
                s: root.s
                on: Flags.pillShowSysmon
                onToggled: Flags.pillShowSysmon = !Flags.pillShowSysmon
            }
        }

        SettingsRow {
            id: recRow
            surface: root
            name: "Recorder"
            icon: "video"

            LinkToggle {
                s: root.s
                on: Flags.pillShowRecorder
                onToggled: Flags.pillShowRecorder = !Flags.pillShowRecorder
            }
        }

        SettingsRow {
            id: timerRow
            surface: root
            name: "Timer"
            icon: "stopwatch"

            LinkToggle {
                s: root.s
                on: Flags.pillShowTimer
                onToggled: Flags.pillShowTimer = !Flags.pillShowTimer
            }
        }

        SettingsRow {
            id: wallRow
            surface: root
            name: "Wallpaper"
            icon: "wallpaper"

            LinkToggle {
                s: root.s
                on: Flags.pillShowWallpaper
                onToggled: Flags.pillShowWallpaper = !Flags.pillShowWallpaper
            }
        }

        SettingsRow {
            id: scratchRow
            surface: root
            name: "Scratchpad"
            icon: "type"

            LinkToggle {
                s: root.s
                on: Flags.pillShowScratch
                onToggled: Flags.pillShowScratch = !Flags.pillShowScratch
            }
        }

        SettingsRow {
            id: launchRow
            surface: root
            name: "Launcher"
            icon: "app-window"

            LinkToggle {
                s: root.s
                on: Flags.pillShowLauncher
                onToggled: Flags.pillShowLauncher = !Flags.pillShowLauncher
            }
        }

        SettingsRow {
            id: emojiRow
            surface: root
            name: "Emoji"
            icon: "emoji"

            LinkToggle {
                s: root.s
                on: Flags.pillShowEmoji
                onToggled: Flags.pillShowEmoji = !Flags.pillShowEmoji
            }
        }

        SettingsRow {
            id: powerRow
            surface: root
            name: "Power"
            icon: "shutdown"
            last: true

            LinkToggle {
                s: root.s
                on: Flags.pillShowPower
                onToggled: Flags.pillShowPower = !Flags.pillShowPower
            }
        }
    }
}