cask "vaqlo" do
  version "0.1.8"
  sha256 "91a88df8e5bcd817224be653975456b5cd37f42c944e32d1dc7080baa54e071c"

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
