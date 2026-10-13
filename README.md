# zenote

A quiet place to write, in the terminal.

Type `notes` and your terminal turns into a calm landscape (a cream sky over soft lavender mountains, or a dusk version at night) with a single narrow column of text in the middle. No menus, no chrome. Inspired by [OmmWriter](https://ommwriter.com).

```text
╭────────────────────────────────────────────────────────────────────────────╮
│                                                                            │
│                                                                            │
│                                                                            │
│                                                                            │
│                                                                            │
│                   morning pages.                                           │
│                                                                            │
│                   - call the printer about the quote                       │
│                   - [ ] draft the roadmap                                  │
│                   - read that essay again                                  │
│                                                                            │
│                   ideas come when you stop looking.▏                       │
│                                                                            │
│···········                                                                 │
│··············                    ···                                       │
│·················     ░░░░░░░░░░··········                                  │
│░░░░░········░░░░░░░░░░░░░░░░░░░░░░░░░░░░░········                          │
│░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ··········  ·······│
│░▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░·············░░│
│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒│
│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│
│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ notes                         21 words ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│
│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│
╰────────────────────────────────────────────────────────────────────────────╯
```

<sub>The mountains are drawn from the same shapes the app renders, shown here in shading. In the terminal they're a soft truecolor gradient.</sub>

Notes are plain markdown files in `~/notes`, so anything else can read them: grep, your editor, or an AI assistant like Claude Code.

## Install

Requires Python 3.8+ and nothing else (standard library only). macOS and Linux.

```sh
git clone https://github.com/magnusohlin/zenote.git
cd zenote
./install.sh
```

`install.sh` symlinks `notes` into `~/.local/bin`. Make sure that directory is on your `PATH`.

## Usage

```sh
notes            # open the last note you had open
notes ideas      # open (or create) a note called "ideas"
notes -l         # list notes, most recent first
notes --dir      # print where notes are stored
```

Inside, just type. Everything saves on its own, about a second after you stop typing and whenever you close.

| Key | |
|---|---|
| `ctrl-o` | switch notes: type to filter, or type a new name to create one |
| `ctrl-c` | copy the selection, or the whole note if nothing is selected |
| `ctrl-z` | undo |
| `ctrl-t` | toggle day / night |
| `esc` / `ctrl-q` | close |
| mouse | click to place the cursor, drag to select (copied on release), wheel to scroll |
| `option ←/→` | move by word |
| `option ⌫` | delete word |
| `ctrl-a` / `ctrl-e` | start / end of line |
| `ctrl-k` / `ctrl-u` | delete to end / start of line |

Lines starting with `- ` or `- [ ] ` continue as a list when you press Enter. Press Enter on an empty bullet to end the list. Lines starting with `#` are tinted as headings.

Copying gives you the real text: no screen padding, and wrapped lines stay whole.

If a note is changed on disk while it's open (for example by another program), zenote reloads it within a second.

## Configuration

Environment variables:

| Variable | Default | |
|---|---|---|
| `NOTES_DIR` | `~/notes` | where notes live |
| `NOTES_WIDTH` | `64` | width of the writing column |
| `NOTES_COLOR` | auto | set to `256` if your terminal lacks truecolor |

The day/night choice and the last opened note are remembered in `~/notes/.state.json`.

## Notes on terminals

- Truecolor terminals (iTerm2, Ghostty, Warp, WezTerm, kitty, macOS Terminal on macOS 26+) look best. Others fall back to 256 colors.
- `cmd` shortcuts belong to the terminal app, so `notes` uses `ctrl` instead (`ctrl-z`, `ctrl-c`). `cmd-v` paste works.
- A thin strip at the right or bottom edge may show your terminal's own background, because windows are rarely an exact number of character cells. In terminals that support it, zenote tints that strip to match; Warp and macOS Terminal don't support it.

## License

MIT
