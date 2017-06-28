#!/bin/bash

cd Nuget
packingnuget="nuget pack DT.Xamarin.TappyBleSDK/DT.Xamarin.TappyBleSDK.nuspec"
echo "$packingnuget"
eval "$packingnuget"
cd ..

