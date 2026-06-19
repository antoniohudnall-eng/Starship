#!/bin/bash
# SEED3 Game Server - Persistent Service
# Keeps all game servers running

cd /data/data/com.termux/files/home

while true; do
    # NOG Game
    if ! nc -z localhost 8085 2>/dev/null; then
        cd /data/data/com.termux/files/home/mortimer/agents/nog/game
        python3 -m http.server 8085 &
        echo "[$(date)] NOG started on 8085"
    fi
    
    # SGVD
    if ! nc -z localhost 8086 2>/dev/null; then
        cd /data/data/com.termux/files/home/Starship/sgvd
        python3 -m http.server 8086 &
        echo "[$(date)] SGVD started on 8086"
    fi
    
    # VERSE
    if ! nc -z localhost 8087 2>/dev/null; then
        cd /data/data/com.termux/files/home/Starship/verse
        python3 -m http.server 8087 &
        echo "[$(date)] VERSE started on 8087"
    fi
    
    # STARSHIP
    if ! nc -z localhost 9091 2>/dev/null; then
        cd /data/data/com.termux/files/home/Starship
        python3 -m http.server 9091 &
        echo "[$(date)] STARSHIP started on 9091"
    fi
    
    sleep 10
done
