import { StatusBar } from "expo-status-bar";
import React, { useEffect } from "react";
import { StyleSheet, Text, View, Button } from "react-native";
import { WRITE_KEY, DATA_PLANE_URL } from "@env";

import rc, { RUDDER_LOG_LEVEL } from "@rudderstack/rudder-sdk-react-native";

import amplitude from "@rudderstack/rudder-integration-amplitude-react-native";
import braze from "@rudderstack/rudder-integration-braze-react-native";

import appcenter from "@rudderstack/rudder-integration-appcenter-react-native";
// import appsflyer from "@rudderstack/rudder-integration-appsflyer-react-native";
import clevertap from "@rudderstack/rudder-integration-clevertap-react-native";
import moengage from "@rudderstack/rudder-integration-moengage-react-native";
import firebase from "@rudderstack/rudder-integration-firebase-react-native";
import singular from "@rudderstack/rudder-integration-singular-react-native";

/*
import RudderStackAPIs from "./RudderStackAPIs";

// Add this component
<RudderStackAPIs />
*/

const identifyWithExternalId = async () => {
  const options = {
    externalIds: [
      {
        id: "some_external_id_1",
        type: "brazeExternalId",
      },
    ],
  };

  rc.identify(
    "test_userId",
    {
      email: "testuser@example.com",
      location: "UK",
    },
    options
  );
};

const identify = async () => {
  const traits = {
    "key-1": "value-1",
    "key-2": 34,
  };
  rc.identify("userId", traits);
  console.log("Identify Event is called.");
};

async function track() {
  rc.track("Custom track Event - 1");
  console.log("Track Event is called.");
}

async function screen() {
  rc.screen("Custom screen Event - 1");
  console.log("Screen Event is called.");
}

async function group() {
  rc.group("Custom group Event - 1");
  console.log("Group Event is called.");
}

async function alias() {
  rc.alias("Custom alias Event - 1");
  rc.alias("Custom alias Event - 1", "userId-12e");

  const options = {
    integrations: {
      Amplitude: true,
    },
  };
  rc.alias("Custom alias Event - 1", options);

  console.log("Alias Event is called.");
}

async function reset() {
  rc.reset();
  console.log("RESET Event is called.");
}

async function flush() {
  rc.flush();
  console.log("FLUSH Event is called.");
}

async function allCalls() {
  identify();
  track();
  screen();
  group();
  alias();
}

function RudderStackAPIs() {
  console.log(WRITE_KEY);
  console.log(DATA_PLANE_URL);

  useEffect(() => {
    const rudderInitialise = async () => {
      await rc.setup(WRITE_KEY, {
        dataPlaneUrl: DATA_PLANE_URL,
        trackAppLifecycleEvents: false,
        recordScreenViews: false,
      });
      console.log("SDK is initalised");
    };
    rudderInitialise().catch(console.error);
  }, []);

  return (
    <View style={styles.container}>
      <StatusBar style="auto" />

      <Button title="Identify" color="#841584" onPress={() => identify()} />
      <Button title="Track" color="#841584" onPress={() => track()} />
      <Button title="Screen" color="#841584" onPress={() => screen()} />
      <Button title="Group" color="#841584" onPress={() => group()} />
      <Button title="Alias" color="#841584" onPress={() => alias()} />
      <Button title="All calls" color="#841584" onPress={() => allCalls()} />

      <Button
        title="Identify With ExternalID"
        color="#841584"
        onPress={() => identifyWithExternalId()}
      />
      <Button title="RESET" color="#841584" onPress={() => reset()} />
      <Button title="FLUSH" color="#841584" onPress={() => flush()} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});

export default RudderStackAPIs;
