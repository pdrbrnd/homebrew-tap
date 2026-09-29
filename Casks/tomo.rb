cask "tomo" do
  version "1.17.0"
  sha256 "b0a9d49fab184b46cd71b3587cf96d8fe64c80980c124289555701520166155c"

  url "https://github.com/pdrbrnd/tomo/releases/download/v#{version}/Tomo-v#{version}.dmg"
  name "Tomo"
  desc "Native macOS e-book library manager"
  homepage "https://github.com/pdrbrnd/tomo"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Tomo.app"

  zap trash: [
    "~/Library/Application Support/com.pdrbrnd.tomo",
    "~/Library/Preferences/com.pdrbrnd.tomo.plist",
    "~/Library/Caches/com.pdrbrnd.tomo",
  ]
end
