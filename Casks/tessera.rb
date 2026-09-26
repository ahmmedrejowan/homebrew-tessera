cask "tessera" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "22c1fb1b32bde294fb2af642ca39c13d9f8b1b351c51d8d2707a085ae53feef7",
         intel: "1fab927acbd2d7edb25ec237777ff541cc5850e39e0ae6182d56fb9424bb8d34"

  url "https://github.com/ahmmedrejowan/tessera/releases/download/v#{version}/Tessera-#{version}-mac-#{arch}.dmg"
  name "Tessera"
  desc "Desktop library for game assets, with their licences and sources on record"
  homepage "https://github.com/ahmmedrejowan/tessera"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Support/Tessera",
    "~/Library/Logs/Tessera",
    "~/Library/Preferences/com.rejowan.tessera.plist",
    "~/Library/Saved Application State/com.rejowan.tessera.savedState",
  ]
end
