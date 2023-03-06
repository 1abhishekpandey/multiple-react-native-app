# Place this file in the same location where "rudder-sdk-react-native" and "Sample app" projects are located
# Prior to running this, make sure you run this command: "sh build-all-package-locally.sh" and all .tgz (tar files) are generated.
 
# Switch to sample app
cd $1 # Provide the Sample app project name

# First uninstall all the existing package
npm uninstall @rudderstack/rudder-sdk-react-native
npm uninstall @rudderstack/rudder-integration-amplitude-react-native
npm uninstall @rudderstack/rudder-integration-appcenter-react-native
npm uninstall @rudderstack/rudder-integration-appsflyer-react-native
npm uninstall @rudderstack/rudder-integration-braze-react-native
npm uninstall @rudderstack/rudder-integration-clevertap-react-native
npm uninstall @rudderstack/rudder-integration-firebase-react-native
npm uninstall @rudderstack/rudder-integration-moengage-react-native
npm uninstall @rudderstack/rudder-integration-singular-react-native

# Now, install all the package
for filename in ../*.tgz; do
    echo "$filename"
    npm i $filename
done