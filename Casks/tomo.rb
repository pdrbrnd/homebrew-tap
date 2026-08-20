cask "tomo" do
  version "1.15.0"
  sha256 "5b15b6806d59fab4627a31e5c9f0ff7cb7f2c0309154ac1015e71091c766df51"

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
