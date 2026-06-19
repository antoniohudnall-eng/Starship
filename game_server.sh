#!/bin/bash
# SEED3 Game Server
# Run this script to start all game servers

# Kill existing
pkill -f "http.server" 2>/dev/null

cd /data/data/com.termux/files/home

# NOG
cd /data/data/com.termux/files/home/mortimer/agents/nog/game
python3 -m http.server 5001 &

# SGVD
cd /data/data/com.termux/files/home/Starship/sgvd
python3 -m http.server 5002 &

# VERSE
cd /data/data/com.termux/files/home/Starship/verse
python3 -m http.server 5003 &

# STARSHIP
cd /data/data/com.termux/files/home/Starship
python3 -m http.server 5004 &

echo "🎮 SEED3 GAMES:"
echo "  NOG:      http://127.0.0.1:5001/"
echo "  SGVD:     http://127.0.0.1:5002/sgvd.html"
echo "  VERSE:    http://127.0.0.1:5003/verse.html"
echo "  STARSHIP: http://127.0.0.1:5004/"
