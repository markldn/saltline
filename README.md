# Saltline — local copy

Source: [original Claude artifact](https://claude.ai/artifact/BGY1SztrAYcJQHSsnHHGmp).

This repository is a self-contained local copy. The game code is bundled inline in `index.html`, and all three font families are included under `fonts/`. It has no runtime CDN imports or external asset dependencies. `run.sh` starts a Python server bound to `127.0.0.1`; the game itself makes no outside connections.

Run `./run.sh` and open the local URL it prints. It starts at port 8000 and automatically tries the next available port if needed. Set `PORT=9000 ./run.sh` to choose a different starting port. Press Ctrl+C to stop the server.
