#!/bin/bash
# SEED3 Game Server Startup
# Starts all game services for browser access

echo "🚀 SEED3 GAME SERVERS STARTING..."

# Kill existing servers
pkill -f "http.server" 2>/dev/null
sleep 1

# Start NOG Game (8081)
cd ~/mortimer/agents/nog/game
python3 -m http.server 8081 &
echo "✅ NOG GAME: http://localhost:8081"

# Start SGVD (8082)
cd ~/Starship/sgvd
python3 -m http.server 8082 &
echo "✅ SGVD: http://localhost:8082/sgvd.html"

# Start Verse (8083)
cd ~/Starship/verse
python3 -m http.server 8083 &
echo "✅ VERSE: http://localhost:8083/verse.html"

# Start Starship (9090)
cd ~/Starship
python3 -m http.server 9090 &
echo "✅ STARSHIP: http://localhost:9090"

# Start QMD Brain Service
cd ~/mortimer/services && python3 -u qmd_service.py &
echo "✅ QMD BRAIN: http://localhost:8000"

sleep 2
echo ""
echo "🎮 ALL SERVERS RUNNING!"
echo ""
echo "Game URLs:"
echo "  NOG:    http://localhost:8081"
echo "  SGVD:   http://localhost:8082/sgvd.html"
echo "  VERSE:  http://localhost:8083/verse.html"
echo "  STARSHIP: http://localhost:9090"
