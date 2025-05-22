#!/bin/bash

go env -w GOARCH=arm64
~/jianguo/config/golang/goctl.sh build gocron
go env -w GOARCH=amd64
