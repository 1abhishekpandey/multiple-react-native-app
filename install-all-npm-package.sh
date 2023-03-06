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

npm i @rudderstack/rudder-sdk-react-native@"*"
npm i @rudderstack/rudder-integration-amplitude-react-native@"*"
npm i @rudderstack/rudder-integration-appcenter-react-native@"*"
npm i @rudderstack/rudder-integration-appsflyer-react-native@"*"
npm i @rudderstack/rudder-integration-braze-react-native@"*"
npm i @rudderstack/rudder-integration-clevertap-react-native@"*"
npm i @rudderstack/rudder-integration-firebase-react-native@"*"
npm i @rudderstack/rudder-integration-moengage-react-native@"*"
npm i @rudderstack/rudder-integration-singular-react-native@"*"
