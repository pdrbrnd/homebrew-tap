cask "tomo" do
  version "1.9.0"
  sha256 "435a21d4ab710eb77a649c3cf6937a5c4f454b217aa741814d03a35e35b55d02"

  url "https://github.com/pdrbrnd/tomo/releases/download/v#{version}/Tomo-v#{version}.dmg"
  name "Tomo"
  desc "Native macOS e-book library manager"
  homepage "https://github.com/pdrbrnd/tomo"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Tomo.app"

  zap trash: [
    "~/Library/Application Support/com.pdrbrnd.tomo",
    "~/Library/Preferences/com.pdrbrnd.tomo.plist",
    "~/Library/Caches/com.pdrbrnd.tomo",
  ]
end
