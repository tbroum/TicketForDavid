#!/bin/bash

while true; do
  result=$(curl -s https://www.eventbrite.co.uk/e/brucon-0x0d-tickets-156520594311 | grep -o "Business Ticket[^}]*AVAILABLE" | grep -oi available); 
  if [ "$result" == "AVAILABLE" ] 
  then
    echo "[[[Turn on your fog horn here]]]"
  fi
  sleep 60; 
done

