cask "vaqlo" do
  version "0.1.5"
  sha256 "bad2e639de67ee9c122ec6d3ae1664a7e846b0b2b5c4a73744c659e98700e3d7"

  url "https://github.com/ivshestakov/vaqlo.app/releases/download/v#{version}/Vaqlo-#{version}.dmg",
      verified: "github.com/ivshestakov/vaqlo.app/"
  name "Vaqlo"
  desc "Local meeting recorder with on-device Whisper transcription"
  homepage "https://panic-kit.com/vaqlo/"

  livecheck do
    url "https://panic-kit.com/vaqlo/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Vaqlo.app"

  zap trash: [
    "~/Library/Application Support/Vaqlo",
    "~/Library/Caches/com.vaqlo.recorder",
    "~/Library/Group Containers/group.com.vaqlo",
    "~/Library/HTTPStorages/com.vaqlo.recorder",
    "~/Library/Preferences/com.vaqlo.recorder.plist",
    "~/Library/Preferences/group.com.vaqlo.plist",
  ]
end
