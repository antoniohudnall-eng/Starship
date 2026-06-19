#!/bin/bash
# SEED3 Game Server - Fixed ports

pkill -f "serve.py\|http.server" 2>/dev/null
sleep 1

cd /data/data/com.termux/files/home

# NOG Game
cd /data/data/com.termux/files/home/mortimer/agents/nog/game
python3 /data/data/com.termux/files/home/serve.py 7770 &

# SGVD
cd /data/data/com.termux/files/home/Starship/sgvd
python3 /data/data/com.termux/files/home/serve.py 7771 &

# VERSE
cd /data/data/com.termux/files/home/Starship/verse
python3 /data/data/com.termux/files/home/serve.py 7772 &

# STARSHIP
cd /data/data/com.termux/files/home/Starship
python3 /data/data/com.termux/files/home/serve.py 7773 &

sleep 2
echo "✅ SEED3 GAMES RUNNING!"
echo "  NOG:      http://localhost:7770/"
echo "  SGVD:     http://localhost:7771/sgvd.html"
echo "  VERSE:    http://localhost:7772/verse.html"
echo "  STARSHIP: http://localhost:7773/"
