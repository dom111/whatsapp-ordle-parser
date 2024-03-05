#!perl -n0

print qq{$3-$2-$1 $4,$5,@{[$6?0|$6:""]},$7\n}
while m!(\d{2})/(\d{2})/(\d{4}), (\d{2}:\d{2}) - ([^:]+): .*?I solved today's #Countle( \d+|) in (\d+:\d{2}) — https://countle.org!cg