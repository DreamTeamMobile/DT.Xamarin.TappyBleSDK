#!/bin/bash

LibVersion="DT.Xamarin.TappyBleSDK/Properties/AssemblyInfo.cs"
NugetVersion="Nuget/DT.Xamarin.TappyBleSDK/DT.Xamarin.TappyBleSDK.nuspec"

sedappid="sed -i '' -e 's|AssemblyVersion(\"[0-9a-z.-]\{1,\}\"|AssemblyVersion(\"$1\"|g' $LibVersion" 
echo "$sedappid"
eval "$sedappid"
sedappid="sed -i '' -e '/<metadata>/,/<\/metadata>/ s|<version>[0-9a-z.-]\{1,\}</version>|<version>$2</version>|g' $NugetVersion" 
echo "$sedappid"
eval "$sedappid"