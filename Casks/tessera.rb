cask "tessera" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "4c29d4fb8b56b3ff9b80708ca2a871e90542b56e80662ea25a11027bf2735aab",
         intel: "804c66fe5c1aceb78a69efabc3e5be8c1f60d989b0ef9034d23a3f0b685640b6"

  url "https://github.com/ahmmedrejowan/tessera/releases/download/v#{version}/Tessera-#{version}-mac-#{arch}.dmg"
  name "Tessera"
  desc "Desktop library for game assets, with their licenses and sources on record"
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
