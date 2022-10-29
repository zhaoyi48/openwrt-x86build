#!/bin/sh

download_latest_release() {
    URL=https://api.github.com/repos/${PROJECT}/releases
    VERSION=$(curl --silent "${URL}" | jq -r '.[0] | .tag_name')
    echo "$PROJECT LATEST VERSION: $VERSION"
    DOWNLOAD_URL=$(curl --silent "${URL}" | jq -r '.[0] | .assets[].browser_download_url'|grep $FILE_PATTERN)
    echo "DOWNLOAD:$DOWNLOAD_URL"
    wget -O $FILE_NAME $DOWNLOAD_URL
}

PROJECT="vernesong/OpenClash"
FILE_PATTERN="luci-app-openclash"
FILE_NAME="luci-app-openclash.ipk"
download_latest_release $PROJECT $FILE_PATTERN $FILE_NAME
