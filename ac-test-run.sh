#!/usr/bin/env bash

echo "App package is: $APP_PACKAGE"

appcenter login --token ddc676948b06cb201171f26a20fcf19e3d768784

UITEST_PATH='UITestDemo.UITest'

# Build UITest project
eval MSBuild $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH -v:q 

# Upload tests
App_Center_Test_Command='appcenter test run uitest --app $TEAM_APP --devices $DEVICE_SET  --app-path $APPCENTER_OUTPUT_DIRECTORY/com.appcenter.UITestDemo.apk  --test-series launch-tests --locale "en_US" --build-dir $APPCENTER_SOURCE_DIRECTORY/$UITEST_PATH/bin/Debug --async --token $API_TOKEN --uitest-tools-dir $APPCENTER_SOURCE_DIRECTORY/packages/Xamarin.UITest.*/tools'

# launch-tests
echo $App_Center_Test_Command
eval $App_Center_Test_Command

# End
echo "end test upload script"

