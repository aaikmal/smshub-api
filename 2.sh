#!/usr/bin/env bash

apiKey="API TARUH DI SINI" #API KEY SMSHUB

	read -p 'Masukan No Order:' order

linkGetOtp="https://smshub.org/stubs/handler_api.php?api_key="$apiKey"&action=getStatus&id="$order""

getOtp=$(curl -s $linkGetOtp)

	echo "Cek OTP dan Rikwes OTP"
	echo " "
	echo $getOtp
	echo " "
	read -p 'Enter untuk refresh' refresh1
getOtp=$(curl -s $linkGetOtp)
	echo " "
	echo $getOtp
	echo " "
	read -p 'Enter untuk refresh' refresh2
getOtp=$(curl -s $linkGetOtp)
	echo " "
	echo $getOtp
