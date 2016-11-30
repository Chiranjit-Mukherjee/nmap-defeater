#!/bin/bash

# Nmap OS Fingerprinting Defeater  is for research and education purpose only.

if [ ! -d "$tcp_sign"]
then
	mkdir tcp_sign
	cp /proc/sys/net/ipv4/ip_default_ttl ./tcp_sign/ip_default_ttl_backup
	cp /proc/sys/net/ipv4/tcp_timestamps ./tcp_sign/tcp_timestamps_backup
	cp /proc/sys/net/ipv4/ip_no_pmtu_disc ./tcp_sign/ip_no_pmtu_disc_backup
	cp /proc/sys/net/ipv4/tcp_stdurg ./tcp_sign/tcp_stdurg_backup
	cp /proc/sys/net/ipv4/tcp_window_scaling ./tcp_sign/tcp_window_scaling_backup
	cp /proc/sys/net/ipv4/tcp_sack ./tcp_sign/tcp_sack_backup
	cp /proc/sys/net/ipv4/tcp_mtu_probing ./tcp_sign/tcp_mtu_probing_backup
fi

clear
echo "  [*] Welcome to OS Nmap Defeater [*] "
echo ""
echo "  (*) Press a for Linux  2.6.11 auditor"
echo "  (*) Press b for Red Hat Linux 2.6.9"
echo "  (*) Press c for Avocent ACS 5000 console server (linux)"
echo "  (*) Press d for Lexmark Printer"
echo "  (*) Press e for Dell 5210n or Lexmark c530 Printer"
echo "  (*) Press f for Pirelli Wireless Modem"
echo "  (*) Press g for Spharion Turbolink Modem"
echo "  (*) Press h for Axis 207 Camera"
echo "  (*) Press i for IBM Webspere Datapower xs40 Proxy Server"
echo ""
echo "  (*) Press r to Reset files"
echo "  (*) Press x to Exit"

read input_var

if [ "$input_var" = "a" ] ; then			# Linux  2.6.11 auditor
	echo "32" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "0" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "61440" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1500" > /proc/sys/net/ipv4/tcp_mtu_probing
	
	echo "Your OS Fingerprint has been set to Linux auditor"
	
elif [ "$input_var" = "b" ] ; then				# Red Hat Linux 2.6.9
	echo "99" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "512" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "57" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Redhat Linux"

elif [ "$input_var" = "c" ] ; then			#	Avocent ACS 5000 console server linux
	echo "225" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "1" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "1" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "16384" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Avocent ACS 5000 console server"
	
elif [ "$input_var" = "d" ] ; then			#	Lexmark Printer
	echo "123" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "1720" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1500" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Lexmark Printer"
	
elif [ "$input_var" = "e" ] ; then			# Dell 5210n or Lexmark c530 Printer
	echo "123" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "1720" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1500" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Dell 5210n or Lexmark c530 Printer"
	
	
elif [ "$input_var" = "f" ] ; then			#	Pirelli Wireless Modem
	echo "25" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "65535" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1280" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Pirelli Wireless Modem"
	
elif [ "$input_var" = "g" ] ; then			# Spharion Turbolink Modem
	echo "57" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "1" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "2560" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1280" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Spharion Turbolink Modem"
	
elif [ "$input_var" = "h" ] ; then			# Axis 207 Camera
	echo "70" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "17250" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1280" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "1280" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to Axis 207 Camera"
	
elif [ "$input_var" = "i" ] ; then			# IBM Webspere Datapower xs40 Proxy Server
	echo "200" > /proc/sys/net/ipv4/ip_default_ttl 
	echo "0" > /proc/sys/net/ipv4/tcp_timestamps 
	echo "1" >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	echo "0" > /proc/sys/net/ipv4/tcp_stdurg 
	echo "2048" > /proc/sys/net/ipv4/tcp_window_scaling 
	echo "0" > /proc/sys/net/ipv4/tcp_sack 
	echo "1500" > /proc/sys/net/ipv4/tcp_mtu_probing
	echo "Your OS Fingerprint has been set to IBM Webspere Datapower xs40 Proxy Server"

elif [ "$input_var" = "r" ] ; then	# To Reset
	cat ./tcp_sign/ip_default_ttl_backup > /proc/sys/net/ipv4/ip_default_ttl 
	cat ./tcp_sign/tcp_timestamps_backup > /proc/sys/net/ipv4/tcp_timestamps 
	cat ./tcp_sign/ip_no_pmtu_disc_backup >/proc/sys/net/ipv4/ip_no_pmtu_disc 
	cat ./tcp_sign/tcp_stdurg_backup > /proc/sys/net/ipv4/tcp_stdurg 
	cat ./tcp_sign/ipv4/tcp_window_scaling_backup > /proc/sys/net/ipv4/tcp_window_scaling 
	cat ./tcp_sign/tcp_sack_backup > /proc/sys/net/ipv4/tcp_sack 
	cat ./tcp_sign/tcp_mtu_probing_backup > /proc/sys/net/ipv4/tcp_mtu_probing

elif [ "$input_var" = "x" ] ; then
	echo "Made By Sillycon Team. Thank You For Using It."
	exit

else
	echo "Wrong Input, Please Try Again..."
	exit
fi





