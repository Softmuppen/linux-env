#!/usr/bin/bash

QOTD_RES=$(curl -X GET "https://quotes.rest/qod?language=en" -H "accept: application/json")

QOTD_TEXT=$(echo ${QOTD_RES} | jq '.contents.quotes[].quote?' | sed 's/"//g')
QOTD_AUTHOR=$(echo ${QOTD_RES} | jq '.contents.quotes[].author?' | sed 's/"//g')

echo "${QOTD_TEXT} - ${QOTD_AUTHOR}"
