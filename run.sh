#!/usr/bin/env bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
export SALTLINE_PORT="${PORT:-8000}"

python3 - <<'PY'
import http.server
import os
import socket
import sys

start = int(os.environ["SALTLINE_PORT"])
if not 1 <= start <= 65535:
    raise SystemExit("PORT must be between 1 and 65535")

server = None
for port in range(start, 65536):
    try:
        server = http.server.ThreadingHTTPServer(("127.0.0.1", port), http.server.SimpleHTTPRequestHandler)
        break
    except OSError:
        continue

if server is None:
    raise SystemExit(f"No available port from {start} through 65535")

port = server.server_address[1]
print(f"Saltline serving at http://127.0.0.1:{port}/ (Ctrl+C to stop)", flush=True)
try:
    server.serve_forever()
except KeyboardInterrupt:
    print("\nSaltline server stopped.", flush=True)
finally:
    server.server_close()
PY
