cask "tomo" do
  version "1.2.0"
  sha256 "2766b5ee75ca9224474a9b12358678c630205dbac8a2e9f14caad5feaf85db44"

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
