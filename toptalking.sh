
PCAP="classifier-training-001-resnet-50.pcap"

HOMENET="172.16.1.1/24"


CONVERSATIONSTARTPOINT=100
HOWMANYCONVERSATIONS=10

tshark -r $PCAP -Y "nfs" -z conv,tcp | awk '{printf("%s:%s:%s\n",$1,$3,$10)}' | awk -F: '{printf("%s %s %s\n",$1,$3,substr($5,1,length($5)-10))}' | sort | uniq -c | sort -nr | grepcidr $HOMENET  | awk '{print $2,$3}' >$PCAP.talkerpairs.txt

echo "NFS Conversations"

cat $PCAP.talkerpairs.txt

echo "Source IP Addresses"

cat talkerpairs.txt | awk '{print $1}' >$PCAP.sourceips.txt
cat $PCAP.sourceips.txt
echo "Source IP Addresses"
cat talkerpairs.txt| awk '{print $2}' >$PCAP.targetips.txt
cat $PCAP.targetips.txt
echo "All IP Addresses"
cat sourceips.txt targetips.txt  | sort | uniq >$PCAP.iplist.txt

cat $PCAP.iplist.txt

pairlist=""; for i in `cat talkerpairs.txt | sed 's/ /-\>/g' | uniq   `; do pairlist="$i;$pairlist";done; echo "digraph Pcap1{$pairlist}" >$PCAP.dot

echo "digraph {" >  $PCAP.conversations.dot
#tshark -r $PCAP -Y "nfs" -z conv,tcp  | grep NFS | sed 's/Call, FH: /Call_fh:/' | sed 's/Reply (Call In /Reply(Callin:/' |  awk '{print $3,$4,$5"[label=\"",$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,"\"];"}' | sed 's/→/->/'  | sed 's/\n//g'>>  $PCAP.conversations.dot
tshark -r $PCAP -Y "nfs" -z conv,tcp  | grep NFS | sed 's/Call, FH: /Call_fh:/' | sed 's/Reply (Call In /Reply(Callin:/' |  awk '{print $3,$4,$5"[label=\"",$1,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,"\"];"}' | sed 's/→/->/' | head -$CONVERSATIONSTARTPOINT   | tail -n $HOWMANYCONVERSATIONS   | sed 's/\n//g'>>  $PCAP.conversations.dot
echo "}" >> $PCAP.conversations.dot






echo "Dot file created, launching svg render"

python toptalk_render.py


