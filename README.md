# Rain City Operator — Hermes Skin

A cyberpunk noir Hermes skin inspired by a rain-soaked megacity command deck: near-black surfaces, teal hologram glow, cyan tool markers, amber warning lights, and orange city-heat errors.

## Preview palette

| Role | Color |
|---|---:|
| Background | `#05080C` |
| Surface | `#0B1118` |
| Current surface | `#111A22` |
| Accent / hologram | `#00E6C3` |
| Tool marker / cyan | `#24BFFF` |
| Thinking / green | `#18F2A2` |
| Primary text | `#EAF7FF` |
| Muted text | `#8FA6B3` |
| Border | `#263644` |
| Warning / amber | `#FFB15A` |
| Error / orange-red | `#FF4E1F` |
| Syntax keyword / purple | `#A94DFF` |

## Install

### One-line install from a published repo

After publishing this folder to GitHub, replace `YOUR_GITHUB_USER` in the command below:

```bash
mkdir -p ~/.hermes/skins && \
  curl -fsSL https://raw.githubusercontent.com/provencio/hermes-rain-city-operator-skin/main/rain-city-operator.yaml \
  -o ~/.hermes/skins/rain-city-operator.yaml && \
  hermes config set display.skin rain-city-operator
```

### Local install from this checkout

```bash
./install.sh
```

Or manually:

```bash
mkdir -p ~/.hermes/skins
cp rain-city-operator.yaml ~/.hermes/skins/rain-city-operator.yaml
hermes config set display.skin rain-city-operator
```

If you use a non-default Hermes profile/home, set `HERMES_HOME` first:

```bash
export HERMES_HOME="$HOME/.hermes/profiles/work"
./install.sh
```

## Revert

```bash
hermes config set display.skin default
```

Or switch to another installed skin:

```bash
hermes skin list
hermes config set display.skin neon-matrix
```

## Files

- `rain-city-operator.yaml` — the Hermes skin.
- `install.sh` — local installer that copies the skin into `$HERMES_HOME/skins` or `~/.hermes/skins` and applies it.
- `preview.html` — static palette/sample preview.

## Notes

- Hermes skins theme the CLI/TUI/Desktop surfaces through the shared skin engine.
- Desktop also has built-in themes; custom skins appear alongside them in Appearance.
- The skin name is `rain-city-operator`; keep the YAML filename matching that name for easy install/share.

## License

MIT. See `LICENSE`.
