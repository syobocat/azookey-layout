#!/usr/bin/env bash
jq -c -s . iOS/*.json > public/iOS.json
jq -c -s . iPadOS/*.json > public/iPadOS.json
