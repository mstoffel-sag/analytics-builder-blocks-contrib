#!/bin/bash
source apama/runtime/${APAMA_VERSION}/Apama/bin/apama_env
export ANALYTICS_BUILDER_SDK=apama-analytics-builder-block-sdk
pysys run
