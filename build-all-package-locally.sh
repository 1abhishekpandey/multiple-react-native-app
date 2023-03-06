# Place this file in the same location where "rudder-sdk-react-native" project is located
# and run this file in mac using the command: "sh build-all-package-locally.sh"

# Move to the React-Native SDK directory
cd "$1"

# First generate all packages
nx deploy rudder-sdk-react-native --dry-run
nx deploy rudder-integration-amplitude-react-native --dry-run
nx deploy rudder-integration-appcenter-react-native --dry-run
nx deploy rudder-integration-appsflyer-react-native --dry-run
nx deploy rudder-integration-braze-react-native --dry-run
nx deploy rudder-integration-clevertap-react-native --dry-run
nx deploy rudder-integration-firebase-react-native --dry-run
nx deploy rudder-integration-moengage-react-native --dry-run
nx deploy rudder-integration-singular-react-native --dry-run

# Pack all the package
cd dist/libs/sdk/ && npm pack
cd ../rudder-integration-amplitude-react-native/ && npm pack
cd ../rudder-integration-appcenter-react-native/ && npm pack
cd ../rudder-integration-appsflyer-react-native/ && npm pack
cd ../rudder-integration-braze-react-native/ && npm pack
cd ../rudder-integration-clevertap-react-native/ && npm pack
cd ../rudder-integration-firebase-react-native/ && npm pack
cd ../rudder-integration-moengage-react-native/ && npm pack
cd ../rudder-integration-singular-react-native/ && npm pack
cd ..

#  Copy tar file
cp sdk/*.tgz ../../../
cp rudder-integration-amplitude-react-native/*.tgz ../../../
cp rudder-integration-appcenter-react-native/*.tgz ../../../
cp rudder-integration-appsflyer-react-native/*.tgz ../../../
cp rudder-integration-braze-react-native/*.tgz ../../../
cp rudder-integration-clevertap-react-native/*.tgz ../../../
cp rudder-integration-firebase-react-native/*.tgz ../../../
cp rudder-integration-moengage-react-native/*.tgz ../../../
cp rudder-integration-singular-react-native/*.tgz ../../../
