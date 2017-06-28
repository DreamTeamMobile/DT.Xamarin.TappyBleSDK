#!/bin/bash

export ANDROID_COMPONENTS=build-tools-25.0.1,android-24,extra-android-support,extra-google-google_play_services,extra-google-m2repository,extra-android-m2repository
export ANDROID_LICENSES=android-sdk-license-c81a61d9
export XAMARIN_ANDROID_VERSION=7.3.1-2
export XAMARIN_IOS_VERSION=10.10.0.36
export MONO_ARCHIVE_VERSION=5.0.1
export MONO_FRAMEWORK_VERSION=5.0.1.1
#
# Download and install Mono and Xamarin
#
echo Download and install Mono
wget -nc -P downloads "https://download.mono-project.com/archive/${MONO_ARCHIVE_VERSION}/macos-10-universal/MonoFramework-MDK-${MONO_FRAMEWORK_VERSION}.macos10.xamarin.universal.pkg"
sudo installer -pkg "downloads/MonoFramework-MDK-${MONO_FRAMEWORK_VERSION}.macos10.xamarin.universal.pkg" -target / 

#echo Download and install Xamarin.iOS
#wget -nc -P downloads "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-${XAMARIN_IOS_VERSION}.pkg"
#sudo installer -pkg "downloads/xamarin.ios-${XAMARIN_IOS_VERSION}.pkg" -target /

echo Download and install Xamarin.Android
curl -L https://raw.github.com/embarkmobile/android-sdk-installer/version-2/android-sdk-installer | bash /dev/stdin --install=$ANDROID_COMPONENTS --accept=$ANDROID_LICENSES
source ~/.android-sdk-installer/env
wget -nc -P downloads "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-${XAMARIN_ANDROID_VERSION}.pkg"
sudo installer -pkg "downloads/xamarin.android-${XAMARIN_ANDROID_VERSION}.pkg" -target /