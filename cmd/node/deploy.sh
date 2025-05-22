#!/bin/bash

go env -w GOARCH=arm64
~/jianguo/config/golang/goctl.sh build node
go env -w GOARCH=amd64

