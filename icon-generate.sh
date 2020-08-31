#!/usr/bin/env bash

# reference:
# https://developer.apple.com/library/ios/qa/qa1686/_index.html

function createDir() {
    mkdir -p "$(destination)/AppIcons"
    if [[ -e "$(destination)/AppIcons/AppIcon.appiconset" ]]; then
        echo "AppIcon.appiconset already exists"
    else
        mkdir "$(destination)/AppIcons/AppIcon.appiconset"
    fi
    if [[ -e "$(destination)/AppIcons/android" ]]; then
        echo "android already exists"
    else
        mkdir "$(destination)/AppIcons/android"
    fi
    mkdir -p "$(destination)/AppIcons/android/mipmap-hdpi"
    mkdir -p "$(destination)/AppIcons/android/mipmap-mdpi"
    mkdir -p "$(destination)/AppIcons/android/mipmap-xhdpi"
    mkdir -p "$(destination)/AppIcons/android/mipmap-xxhdpi"
    mkdir -p "$(destination)/AppIcons/android/mipmap-xxxhdpi"

}

function create_ios_json() {
    cat <<EOT >>"$(destination)/AppIcons/AppIcon.appiconset/Contents.json"
{"images":[{"size":"60x60","expected-size":"180","filename":"180.png","idiom":"iphone","scale":"3x"},{"size":"40x40","expected-size":"80","filename":"80.png","idiom":"iphone","scale":"2x"},{"size":"40x40","expected-size":"120","filename":"120.png","idiom":"iphone","scale":"3x"},{"size":"60x60","expected-size":"120","filename":"120.png","idiom":"iphone","scale":"2x"},{"size":"57x57","expected-size":"57","filename":"57.png","idiom":"iphone","scale":"1x"},{"size":"29x29","expected-size":"58","filename":"58.png","idiom":"iphone","scale":"2x"},{"size":"29x29","expected-size":"29","filename":"29.png","idiom":"iphone","scale":"1x"},{"size":"29x29","expected-size":"87","filename":"87.png","idiom":"iphone","scale":"3x"},{"size":"57x57","expected-size":"114","filename":"114.png","idiom":"iphone","scale":"2x"},{"size":"20x20","expected-size":"40","filename":"40.png","idiom":"iphone","scale":"2x"},{"size":"20x20","expected-size":"60","filename":"60.png","idiom":"iphone","scale":"3x"},{"size":"1024x1024","filename":"1024.png","expected-size":"1024","idiom":"ios-marketing","scale":"1x"},{"size":"40x40","expected-size":"80","filename":"80.png","idiom":"ipad","scale":"2x"},{"size":"72x72","expected-size":"72","filename":"72.png","idiom":"ipad","scale":"1x"},{"size":"76x76","expected-size":"152","filename":"152.png","idiom":"ipad","scale":"2x"},{"size":"50x50","expected-size":"100","filename":"100.png","idiom":"ipad","scale":"2x"},{"size":"29x29","expected-size":"58","filename":"58.png","idiom":"ipad","scale":"2x"},{"size":"76x76","expected-size":"76","filename":"76.png","idiom":"ipad","scale":"1x"},{"size":"29x29","expected-size":"29","filename":"29.png","idiom":"ipad","scale":"1x"},{"size":"50x50","expected-size":"50","filename":"50.png","idiom":"ipad","scale":"1x"},{"size":"72x72","expected-size":"144","filename":"144.png","idiom":"ipad","scale":"2x"},{"size":"40x40","expected-size":"40","filename":"40.png","idiom":"ipad","scale":"1x"},{"size":"83.5x83.5","expected-size":"167","filename":"167.png","idiom":"ipad","scale":"2x"},{"size":"20x20","expected-size":"20","filename":"20.png","idiom":"ipad","scale":"1x"},{"size":"20x20","expected-size":"40","filename":"40.png","idiom":"ipad","scale":"2x"},{"idiom":"watch","filename":"172.png","subtype":"38mm","scale":"2x","size":"86x86","expected-size":"172","role":"quickLook"},{"idiom":"watch","filename":"80.png","subtype":"38mm","scale":"2x","size":"40x40","expected-size":"80","role":"appLauncher"},{"idiom":"watch","filename":"88.png","subtype":"40mm","scale":"2x","size":"44x44","expected-size":"88","role":"appLauncher"},{"idiom":"watch","filename":"100.png","subtype":"44mm","scale":"2x","size":"50x50","expected-size":"100","role":"appLauncher"},{"idiom":"watch","filename":"196.png","subtype":"42mm","scale":"2x","size":"98x98","expected-size":"196","role":"quickLook"},{"idiom":"watch","filename":"216.png","subtype":"44mm","scale":"2x","size":"108x108","expected-size":"216","role":"quickLook"},{"idiom":"watch","filename":"48.png","subtype":"38mm","scale":"2x","size":"24x24","expected-size":"48","role":"notificationCenter"},{"idiom":"watch","filename":"55.png","subtype":"42mm","scale":"2x","size":"27.5x27.5","expected-size":"55","role":"notificationCenter"},{"size":"29x29","expected-size":"87","filename":"87.png","idiom":"watch","role":"companionSettings","scale":"3x"},{"size":"29x29","expected-size":"58","filename":"58.png","idiom":"watch","role":"companionSettings","scale":"2x"},{"size":"1024x1024","expected-size":"1024","filename":"1024.png","idiom":"watch-marketing","scale":"1x"},{"size":"128x128","expected-size":"128","filename":"128.png","idiom":"mac","scale":"1x"},{"size":"256x256","expected-size":"256","filename":"256.png","idiom":"mac","scale":"1x"},{"size":"128x128","expected-size":"256","filename":"256.png","idiom":"mac","scale":"2x"},{"size":"256x256","expected-size":"512","filename":"512.png","idiom":"mac","scale":"2x"},{"size":"32x32","expected-size":"32","filename":"32.png","idiom":"mac","scale":"1x"},{"size":"512x512","expected-size":"512","filename":"512.png","idiom":"mac","scale":"1x"},{"size":"16x16","expected-size":"16","filename":"16.png","idiom":"mac","scale":"1x"},{"size":"16x16","expected-size":"32","filename":"32.png","idiom":"mac","scale":"2x"},{"size":"32x32","expected-size":"64","filename":"64.png","idiom":"mac","scale":"2x"},{"size":"512x512","expected-size":"1024","filename":"1024.png","idiom":"mac","scale":"2x"}]}

EOT
}

function create_ios_icons() {
    image="$1"

    # Notification

    create_icon "$image" "16" "16"
    create_icon "$image" "20" "20"
    create_icon "$image" "29" "29"
    create_icon "$image" "32" "32"
    create_icon "$image" "40" "40"
    create_icon "$image" "48" "48"
    create_icon "$image" "50" "50"
    create_icon "$image" "55" "55"
    create_icon "$image" "57" "57"
    create_icon "$image" "58" "58"
    create_icon "$image" "60" "60"
    create_icon "$image" "64" "64"
    create_icon "$image" "72" "72"
    create_icon "$image" "76" "76"
    create_icon "$image" "80" "80"
    create_icon "$image" "87" "87"
    create_icon "$image" "88" "88"
    create_icon "$image" "100" "100"
    create_icon "$image" "114" "114"
    create_icon "$image" "120" "120"
    create_icon "$image" "128" "128"
    create_icon "$image" "144" "144"
    create_icon "$image" "152" "152"
    create_icon "$image" "167" "167"
    create_icon "$image" "172" "172"
    create_icon "$image" "180" "180"
    create_icon "$image" "196" "196"
    create_icon "$image" "216" "216"
    create_icon "$image" "256" "256"
    create_icon "$image" "512" "512"
    create_icon "$image" "1024" "1024"
}

function create_android_icons() {
    image="$1"
    sips -s format png -z "72" "72" "$image" --out "$(destination)/AppIcons/android/mipmap-hdpi/ic_launcher.png"
    sips -s format png -z "48" "48" "$image" --out "$(destination)/AppIcons/android/mipmap-mdpi/ic_launcher.png"
    sips -s format png -z "96" "96" "$image" --out "$(destination)/AppIcons/android/mipmap-xhdpi/ic_launcher.png"
    sips -s format png -z "144" "144" "$image" --out "$(destination)/AppIcons/android/mipmap-xxhdpi/ic_launcher.png"
    sips -s format png -z "192" "192" "$image" --out "$(destination)/AppIcons/android/mipmap-xxxhdpi/ic_launcher.png"
}

function create_icon() {
    image="$1"
    size="$2"
    name="$3"

    sips -s format png -z "$size" "$size" "$image" --out "$(destination)/AppIcons/AppIcon.appiconset/${name}.png"

}

function optimize_icons() {
    if hash imageoptim 2>/dev/null; then
        imageoptim --directory "$(destination)/AppIcons"
    else
        echo
        echo "imageoptim-cli is not installed. Icons won't be optimized."
        echo "To install, run:"
        echo "  $ npm install -g imageoptim-cli"
    fi
}

function destination() {
    pwd
}

function run() {
    if [[ -z "$1" ]]; then
        echo "usage: ./ios-icon-generator [IMAGE]"
    else
        image="$1"

        createDir
        create_ios_json
        create_ios_icons "$image"
        sips -s format png -z "1024" "1024" "$image" --out "$(destination)/AppIcons/appstore.png"
        sips -s format png -z "512" "512" "$image" --out "$(destination)/AppIcons/playstore.png"
        create_android_icons "$image"
        optimize_icons
    fi
}

(run $@)
