#!/bin/bash

if [[ -z "$1" ]]; then
  echo >&2 "Please specify the file to parse as the first argument to this script."
  exit 1
fi

if [[ ! -f $1 ]]; then
  echo >&2 "File $1 does not exist."
  exit 1
fi


for game in wordle countle quordle wheretaken; do
  echo -n "Parsing $1 and extracting $game scores... "

  if ! perl parse-$game.pl "$1" > $game.csv; then
    echo >&2 "Error parsing, aborting."
    exit 2;
  fi

  echo "OK"
  echo "Extracted $(wc -l $game.csv | awk '{print $1}') messages with $game data into $game.csv."
  echo
done
