cask "skald" do
  version "0.4.1"
  sha256 "2c1290b5946659cf252effc6bd4870fbd9199c94d0aaa706cf19b636fa1d6b15"

  url "https://github.com/ivshestakov/skald.app/releases/download/v#{version}/Skald-#{version}.dmg"
  name "Skald"
  desc "Menu-bar pop-up translator with a tone slider"
  homepage "https://panic-kit.com/skald/"

  livecheck do
    url "https://panic-kit.com/skald/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Skald.app"

  zap trash: [
    "~/Library/Caches/com.ivshestakov.skald",
    "~/Library/HTTPStorages/com.ivshestakov.skald",
    "~/Library/Preferences/com.ivshestakov.skald.plist",
  ]

  caveats <<~EOS
    Skald needs Accessibility permission to paste translations:
      System Settings → Privacy & Security → Accessibility → enable Skald

    API keys (DeepL/Claude) are stored in the macOS Keychain and are not
    removed by `brew uninstall --zap`. To remove them:
      security delete-generic-password -s com.ivshestakov.skald.v2
  EOS
end
