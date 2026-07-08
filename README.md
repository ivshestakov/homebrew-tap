# homebrew-tap

Personal [Homebrew](https://brew.sh) tap for [panic-kit](https://panic-kit.com) apps.

```sh
brew tap ivshestakov/tap
brew install --cask skald
brew install --cask vaqlo
```

| Cask | App |
| --- | --- |
| [`skald`](Casks/skald.rb) | [Skald](https://panic-kit.com/skald/) — menu-bar pop-up translator with a tone slider |
| [`vaqlo`](Casks/vaqlo.rb) | [Vaqlo](https://panic-kit.com/vaqlo/) — local meeting recorder with on-device transcription |

All apps are signed with an Apple Developer ID and notarized. Updates are
delivered in-app via Sparkle (`auto_updates true`), so the cask version only
matters at install time.
