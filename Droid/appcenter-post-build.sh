#!/usr/bin/env bash

# Environment Variables created by App Center
# $APPCENTER_SOURCE_DIRECTORY
# $APPCENTER_OUTPUT_DIRECTORY
# $APPCENTER_BRANCH

# Custom Environment Variables
# $API_KEY
# $TEAM_APP
# $DEVICE_SET

#echo "Start Test upload script (ac-test-run.sh)"
# sh ../ac-test-run.sh
#echo "Finish Test upload script (ac-test-run.sh)"

echo "Start Distribute script (ac-distribute.sh)"
#sh ../ac-distribute.sh
echo "Finish Distribute script (ac-distribute.sh)"

#if test -f $APP_PACKAGE
#then
#    echo $APP_PACKAGE exists.
#else
#    echo $APP_PACKAGE does not exist.
#fi

#echo "WC Syntax experiment"
#eval wc -c $APP_PACKAGE

#echo "end post-build script"


# TESTFAIRY_UPLOAD_API_KEY=1234356

# if [[ "$APPCENTER_XCODE_PROJECT" ]]; then
#   curl https://upload.testfairy.com/api/upload \
#   -F "api_key=$TESTFAIRY_UPLOAD_API_KEY" \
#   -F "file=@$APPCENTER_OUTPUT_DIRECTORY/example.ipa" 
# fi
#
# if [[ -z "$APPCENTER_XCODE_PROJECT" ]]; then
#   curl https://upload.testfairy.com/api/upload \
#   -F "api_key=$TESTFAIRY_UPLOAD_API_KEY" \
#   -F "file=@$APPCENTER_OUTPUT_DIRECTORY/example.apk"
# fi