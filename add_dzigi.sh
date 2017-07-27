# Add dzigi in hosts
sudo -- sh -c "echo '10.0.0.16'	dzigi >> /etc/hosts" 
sudo dscacheutil -flushcache;
sudo killall -HUP mDNSResponder