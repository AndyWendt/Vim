#!/usr/bin/env bash

gitbook build
ls _book
aws s3 sync _book s3://vim.commandz.io --delete
