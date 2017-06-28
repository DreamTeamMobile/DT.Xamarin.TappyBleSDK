#!/bin/bash
cd Nuget
uploadnuget="nuget push -ApiKey $2 DT.Xamarin.TappyBleSDK.$1.nupkg"
echo "$uploadnuget"
eval "$uploadnuget"
cd ..