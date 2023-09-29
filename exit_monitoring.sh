#!/bin/bash
card=$(airmon-ng | tail -n2 | cut -f2)
airmon-ng stop $card
systemctl start NetworkManager
exit #if in root mode
