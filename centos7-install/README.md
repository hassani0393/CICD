# Installing CentOS7 for general purpose

## Welcome Page

    Choose the language for the installation process.

## Installation Summary Page

    Here is all the Setup sections that we need to work on.

## Security Policy

    We just leave this page out since by default there is no content to choose from.

## KDUMP

    Just disable kdump.

## Software Selection

    1. Select the Minimal Install in "Base Environment List".
    2. Leave All the options in "Add-Ons for Selected Environment" unchecked.

## Network & Host Name

    1. Enter Host name at the "Host name" field and click on Apply.
    2. Select Configure, In "General" tab, check the "Automatically connect to this network when it is available" box, so that the machine will autoreconnect after reboot.
    3. in "IPc4 Settings" set the desired setting and click save.
    4. Toggle network On.

## Installation Destination

    1. Select desired disk for installation.
    2. Select "I will configure paritioning".
    3. Select "Done".
    4. Choose desired partitioning Scheme. "Standard Partition" by default, "LVM" if you plan to extend space.
    5. Click on the "+" to add a mount point. Always set swap space as well.

## Language Support

    Choose language(s) to support in the system.

## Keyboard Layout

    Choose keyboard layouts for the OS.

## Date & Time 

    1. Select time zone on the map.
    2. If desired, Add NTP server IPs by clicking on the gear next to "Network Time" toggle.

## Begin Installation

    1. Select "Begin Installation".
    2. Select "ROOT PASSWORD" to choose one.
    3. After completion, click "Reboot"
