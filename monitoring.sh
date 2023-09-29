#!/bin/bash
#You must be root to execute the following commands
airmon-ng check kill
card=$(airmon-ng | tail -n2 | cut -f2 |head -n1)
airmon-ng start $card
card=$card"mon"
sleep 0.5
a=$(airmon-ng | tail -n2 | cut -f2 |head -n1)
