#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen

# Generally useful packages
rpm-ostree install kate
rpm-ostree install thunderbird
rpm-ostree install haruna
# rpm-ostree install sonaar

# List of packages for creative work
rpm-ostree install vlc
rpm-ostree install krita
rpm-ostree install gimp
rpm-ostree install blender
rpm-ostree install inkscape
rpm-ostree install audacity
rpm-ostree install obs-studio
rpm-ostree install kdenlive
rpm-ostree install shotcut
rpm-ostree install darktable
rpm-ostree install rawtherapee
# rpm-ostree install gimp-plugin-registry
# rpm-ostree install krita-plugin-gmic
# rpm-ostree install blender-plugin-gltf
# rpm-ostree install inkscape-plugin-gcode
# rpm-ostree install audacity-plugin-lv2
# rpm-ostree install obs-studio-plugin-v4l2sink
# rpm-ostree install kdenlive-plugin-titler
# rpm-ostree install shotcut-plugin-mlt
#### Example for enabling a System Unit File

systemctl enable podman.socket
