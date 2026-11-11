# Saltline: Undertow

A standalone local fork of the improved Saltline artifact. It includes the updated game's Mission and Holdout modes, Standard/Hard/Brutal difficulty settings, sidearm controls, revised weapon/audio/gameplay work, and the original procedural harbor. Undertow adds a rising-tide briefing and title treatment.

Source: [Saltline Claude artifact](https://claude.ai/artifact/BGY1SztrAYcJQHSsnHHGmp). The current frame payload was retrieved from its public `_f/` URL and compared against the older local baseline. The updated artifact notes that its author revised weapon models, sound, and gameplay; its code also adds Holdout, difficulty selection, and a sidearm. Fonts are bundled locally for offline play.

## Run

Run `./run.sh` and open the local URL it prints. It serves on `127.0.0.1` and tries the next free port if the default is occupied.

## Controls

WASD move, mouse look/fire, right mouse aim, R reload, Q sidearm, E cut relays, Space jump, Shift sprint, C crouch, Escape pause. Touch and gamepad controls are supported.
