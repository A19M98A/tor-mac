#!/bin/bash
trap "networksetup -setsocksfirewallproxystate 'Wi-fi' off && exit 0" SIGINT
	SIGTERM
pidof -k tor
networksetup -setsocksfirewallproxystate 'Wi-fi' off
networksetup -setsocksfirewallproxy "Wi-fi" 127.0.0.1 9050
tor
