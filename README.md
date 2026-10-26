# WeekNumber

As an American living in Sweden who doesn't think in week numbers, it's challenging to have a frame of reference when people here say something will happen in week X. I found a few apps that had this feature, but they all seemed like overkill. This app is simple and has only one purpose, which is to show the week number in the macOS menu bar. At least if I get used to seeing the current week, I should start training my brain to think more in weeks.

A tiny macOS menu bar app that shows the current ISO-8601 week number (e.g. `W43`).
Click it for today's date, a Launch at Login toggle, and Quit.

## Install

Download [WeekNumber.zip](https://github.com/CoderDennis/week-number/releases/latest/download/WeekNumber.zip)
from the [latest release](https://github.com/CoderDennis/week-number/releases/latest), unzip it and move
`WeekNumber.app` into your Applications folder.

The app isn't notarized, so the first time you open it macOS will say it can't verify it. Go to
**System Settings → Privacy & Security** and click **Open Anyway**.

Requires macOS 14+ on Apple Silicon. On other Macs, build from source below.

## Build

Requires macOS 14+ and the Swift toolchain (Xcode Command Line Tools are enough).

```sh
./build.sh            # builds build/WeekNumber.app
./build.sh --install  # also copies it to ~/Applications
open ~/Applications/WeekNumber.app
```

## License

MIT — see [LICENSE.md](LICENSE.md).
