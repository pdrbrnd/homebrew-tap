cask "tomo" do
  version "1.8.1"
  sha256 "23ac39740f399eea65bbb7139b137a477a209d15116b57d72e5d63d2625332f9"

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
