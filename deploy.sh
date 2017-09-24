#!/usr/bin/env bash

aws s3 sync _book s3://vim.commandz.io --delete
