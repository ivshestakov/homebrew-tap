cask "vaqlo" do
  version "0.1.9"
  sha256 "1e998b64ac677133137a96a3d7b3a9f06d5dc8cf5a1454253e6fed8146c0515e"

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
