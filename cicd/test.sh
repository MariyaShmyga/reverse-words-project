#!/bin/bash
set -e

expected="world hello"
result=$(echo "hello world" | /usr/bin/reverse-words)

if [[ "$result" == "$expected" ]]; then
	echo "Test passed"
else
	echo "Test failed: expected '$expected', got '$result'"
	exit 1
fi
