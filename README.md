# WeekNumber

A tiny macOS menu bar app that shows the current ISO-8601 week number (e.g. `W43`).
Click it for today's date, a Launch at Login toggle, and Quit.

## Build

Requires macOS 14+ and the Swift toolchain (Xcode Command Line Tools are enough).

```sh
./build.sh            # builds build/WeekNumber.app
./build.sh --install  # also copies it to ~/Applications
open ~/Applications/WeekNumber.app
```

## License

MIT — see [LICENSE.md](LICENSE.md).
