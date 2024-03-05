#!perl -n0

print qq{$3-$2-$1 $4,$5,$6,$7,$8,$9,$10,"$11"\n}
while m!(\d{2})/(\d{2})/(\d{4}), (\d{2}:\d{2}) - ([^:]+): .*?Daily Quordle (\d+)\n(\d)\xef\xb8\x8f\xe2\x83\xa3(\d)\xef\xb8\x8f\xe2\x83\xa3\n(\d)\xef\xb8\x8f\xe2\x83\xa3(\d)\xef\xb8\x8f\xe2\x83\xa3\n([\s\S]+?)(?=\n\d{2}/\d{2}/\d{4}, \d{2}:\d{2}|\n$)!cg