#!/usr/bin/awk -f 

{
	## Next Step is how to replace XXXXX:<ip address>/XXXX and just include the IP
	
	# Built inbound TCP/UDP/ICMP
	if(/Built\ inbound\ TCP/){
		$3=$4=$5=$10=$11=$12=$14=$15="";
		gsub(/\/.*$/, "", $13);
		gsub(/\/.*$/, "", $16);
		gsub(/([)(])/, "", $13);
		gsub(/([)(])/, "", $16);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
	 	print $0
	}
	if(/Built\ inbound\ UDP/){
		$3=$4=$5=$10=$11=$12=$14=$15=""; 
		gsub(/\/.*$/, "", $13);
		gsub(/\/.*$/, "", $16);
		gsub(/([)(])/, "", $13);
		gsub(/([)(])/, "", $16);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		print $0
	}
	if(/Built\ inbound\ ICMP/){
		$3=$4=$5=$10=$11=$13=$14=$15=""; 
		gsub(/\/.*$/, "", $13);
		gsub(/\/.*$/, "", $16);
		gsub(/([)(])/, "", $13);
		gsub(/([)(])/, "", $16);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		print $0
	}

	# Built outbound TCP/UDP/ICMP
	if(/Built\ outbound\ TCP/){
		$3=$4=$5=$10=$11=$12=$14=$15="";
		gsub(/\/.*$/, "", $13);
		gsub(/\/.*$/, "", $16);
		gsub(/([)(])/, "", $13);
		gsub(/([)(])/, "", $16); 
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		print $0
	}

	if(/Built\ outbound\ UDP/){
		$3=$4=$5=$10=$11=$12=$14=$15="";
		gsub(/\/.*$/, "", $13);
		gsub(/\/.*$/, "", $16);
		gsub(/([)(])/, "", $13);
		gsub(/([)(])/, "", $16); 
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		print $0
	}
	if(/Built\ outbound\ ICMP/){
		$3=$4=$5=$10=$11=$13=$15=$16="";
		gsub(/\/.*$/, "", $12);
		gsub(/\/.*$/, "", $14);
		gsub(/([)(])/, "", $12);
		gsub(/([)(])/, "", $14); 
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}

	# Deny inbound UDP, no inbound TCP was found 
	if(/Deny\ inbound\ UDP/){
		$3=$4=$5=$9=$11=$13=$14=$15="";
		gsub(/\/.*$/, "", $10);
		gsub(/\/.*$/, "", $12);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}

	# Deny tcp/udp/icmp
	if(/Deny\ tcp/){
		$3=$4=$5=$8=$10=$12=$13=$14=$15=$16="";
		gsub(/\/.*$/, "", $9);
		gsub(/\/.*$/, "", $11);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ","); 
		print $0
	}
	if(/Deny\ udp/){
		$3=$4=$5=$8=$10=$12=$13=$14=$15=$16="";
		gsub(/\/.*$/, "", $9);
		gsub(/\/.*$/, "", $11); 
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}
	if(/Deny\ icmp/){
		$3=$4=$5=$8=$10=$12=$13=$14=$15=$16=$17=$18=$19=$20=""; 
		gsub(/\/.*$/, "", $9);
		gsub(/\/.*$/, "", $11);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}

	# Teardown TCP/UDP Connection
	if(/Teardown\ TCP/){
		$3=$4=$5=$9=$10=$12=$14=$15=$16=$17=$18=$19=""; 
		gsub(/\/.*$/, "", $11);
		gsub(/\/.*$/, "", $13);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}
	if(/Teardown\ UDP/){
		$3=$4=$5=$9=$10=$12=$14=$15=$16=$17="";
		gsub(/\/.*$/, "", $11);
		gsub(/\/.*$/, "", $13); 
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}

	# Dropped UDP DNS
	if(/Dropped\ UDP\ DNS/){
		$3=$4=$5=$10=$12=$14=$15=$16=$17=$18=$19=$20=$21=$22=$23=""; 
		gsub(/\/.*$/, "", $11);
		gsub(/\/.*$/, "", $13);
		gsub(/\ \ \ /, ",");
		gsub(/\, /, ",");
		gsub(/\ \ /, ",");
		print $0
	}
}

