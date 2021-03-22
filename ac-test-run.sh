#!/usr/bin/env bash

echo "App package is: $APP_PACKAGE"

appcenter login --token ddc676948b06cb201171f26a20fcf19e3d768784

UITEST_PATH='UITestDemo.UITest'

# Build UITest project
eval MSBuild $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH -v:q 

# Upload tests
App_Center_Test_Command='appcenter test run uitest --app $TEAM_APP --devices $DEVICE_SET --app-path $APP_PACKAGE  --test-series launch-tests --locale "en_US" --build-dir $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH/bin/Debug --async --token $API_TOKEN --uitest-tools-dir $APPCENTER_SOURCE_DIRECTORY/packages/Xamarin.UITest.*/tools'
# App_Center_Test_Command='appcenter test run uitest --app $TEAM_APP --devices $DEVICE_SET --app-path $APP_PACKAGE  --test-series "$APPCENTER_BRANCH" --locale "en_US" --build-dir $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH/bin/Debug --async --token $API_TOKEN --uitest-tools-dir $APPCENTER_SOURCE_DIRECTORY/packages/Xamarin.UITest.*/tools'
# App_Center_Test_Command='appcenter test run uitest --app $TEAM_APP --devices $DEVICE_SET --app-path $APP_PACKAGE  --test-series "gh-$APPCENTER_BRANCH" --locale "en_US" --build-dir $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH/bin/Debug --async --token $API_TOKEN --uitest-tools-dir $APPCENTER_SOURCE_DIRECTORY/packages/Xamarin.UITest.*/tools'
# launch-tests
echo $App_Center_Test_Command
eval $App_Center_Test_Command

# End
echo "end test upload script"

# appcenter test run uitest --app "appcenter-Xamarin.UITest-Demo/appcenter-Xamarin.UITest-Demo-Droid" --devices "appcenter-Xamarin.UITest-Demo/smoke-tests" --app-path pathToFile.apk --test-series "master" --locale "en_US" --build-dir pathToUITestBuildDir
#appcenter test run uitest --app "Xamarin-UI-Demo/Xamarin-UI-Demo-Android" --devices b74efe5a --app-path pathToFile.apk --test-series "master" --locale "en_US" --build-dir pathToUITestBuildDir


#appcenter test run uitest --app "Xamarin-UI-Demo/Xamarin-UI-Demo-Android" --devices "Xamarin-UI-Demo/lote01" --app-path pathToFile.apk --test-series "master" --locale "en_US" --build-dir pathToUITestBuildDir