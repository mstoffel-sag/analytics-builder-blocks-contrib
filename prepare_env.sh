#!/bin/bash
echo $APAMA_VERSION
if [[ ! -d "apama-analytics-builder-block-sdk" ]]
then
    git clone https://github.com/SoftwareAG/apama-analytics-builder-block-sdk.git
fi

cd apama-analytics-builder-block-sdk
git pull
cd ..


if ! [ -f ./apama/apama_core_${APAMA_VERSION}_amd64_linux.tar.gz ]; then
            mkdir ./apama;
            curl  https://downloads.apamacommunity.com/apama-core/${APAMA_VERSION}/apama_core_${APAMA_VERSION}_amd64_linux.tar.gz -o ./apama/apama_core_${APAMA_VERSION}_amd64_linux.tar.gz;
            mkdir -p ./apama/runtime/${APAMA_VERSION};
            tar xvzf ./apama/apama_core_${APAMA_VERSION}_amd64_linux.tar.gz -C ./apama/runtime/${APAMA_VERSION};
            ls -la ./apama/runtime/${APAMA_VERSION};
        fi

source apama/runtime/${APAMA_VERSION}/Apama/bin/apama_env
set ANALYTICS_BUILDER_SDK=apama-analytics-builder-block-sdk
