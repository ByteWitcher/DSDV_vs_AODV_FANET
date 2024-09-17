#!/usr/bin/awk -f

BEGIN {
 sentDSDV = 0
 receivedDSDV = 0
 sentAODV = 0
 receivedAODV = 0
 }
 
 NR == 1 && ARGC == 3 {
    simulationTime = ARGV[2]
    delete ARGV[2]  # Remove the input number from the argument list
}
 
{
 #packet loss ratio NewReno
 if($1 == "s" && $3 == "_0_" && $4 == "AGT" && $7 == "tcp") {
 	sentDSDV ++ 
 }
 else if ($1 == "r" && $3 == "_4_" && $4 == "AGT"  && $7 == "tcp"){
 	receivedDSDV ++
 } 
 else if($1 == "s" && $3 == "_5_" && $4 == "AGT" && $7 == "tcp"){
 	sentAODV ++
 }
 else if($1 == "r" && $3 == "_9_" && $4 == "AGT" && $7 == "tcp"){
 	receivedAODV ++
 }
}
  
 END { 
 plrDSDV = (sentDSDV - receivedDSDV)/sentDSDV
 plrAODV = (sentAODV - receivedAODV)/sentAODV
 print "\n\n#### DSDV ####\n\n";
 print "Sent DSDV = " sentDSDV;
 print "\nReceived DSDV = " receivedDSDV;
 print "\nPacket loss ratio = " plrDSDV
 print "\n\n#### AODV ####\n\n";
 print "Sent AODV = " sentAODV;
 print "\nReceived AODV = " receivedAODV;
 print "\nPacket loss ratio = " plrAODV
 print"\n\n#### SIMULATION TIME : " simulationTime " ####"
 print "\n";
 print simulationTime "," plrDSDV "," plrAODV >> "output.csv"
}
 
