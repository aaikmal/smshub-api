#!/usr/bin/env bash

apiKey="125887Ufb3f76d9221ab3d90d155c9d270a5c11" #API KEY SMSHUB
serviceType="aj" #untuk OneAset

linkGetBalance="https://smshub.org/stubs/handler_api.php?api_key="$apiKey"&action=getBalance"
linkGetNumber="https://smshub.org/stubs/handler_api.php?api_key="$apiKey"&action=getNumber&service="$serviceType"&operator=&country=6"

getSaldo=$(curl -s GET $linkGetBalance)
getNumber=$(curl -s GET $linkGetNumber)

	saldo=$( echo "$getSaldo" | cut -d ":" -f 2)
	order=$( echo "$getNumber" | cut -d ":" -f 2)
	number=$( echo "$getNumber" | cut -d ":" -f 3)
		
		echo "Get Number OneAset by Noobs ID"
		echo "Sisa Saldo:" $saldo
		echo " "
		echo "Order ID:" $order
		echo "Nomor Hp:" $number
		echo " "
		
linkGetAnother="https://smshub.org/stubs/handler_api.php?api_key="$apiKey"&action=setStatus&status=3&id="$order""
linkGetSuccess="https://smshub.org/stubs/handler_api.php?api_key="$apiKey"&action=setStatus&status=6&id="$order""
	
		read -p 'Enter Untuk Req OTP Ulang' enteAnother
		
getAnother=$(curl -s $linkGetAnother)	

		echo "Sukses mengurim OTP Ulang"
		sleep 1
		read -p 'Enten untuk mengakhiri sesi' enterEnd
		
getSucces=$(curl -s $linkGetSuccess)
getSaldo=$(curl -s GET $linkGetBalance)	

	saldoAkhir=$( echo "$getSaldo" | cut -d ":" -f 2)
		
		echo "Sisa Saldo:" $saldoAkhir
		
