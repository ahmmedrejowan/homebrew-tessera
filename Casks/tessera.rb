# Written by Tessera's release workflow on each published release. The version below is a
# placeholder until the first one: see https://github.com/ahmmedrejowan/tessera/releases
cask "tessera" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   :no_check,
         intel: :no_check

  url "https://github.com/ahmmedrejowan/tessera/releases/download/v#{version}/Tessera-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ahmmedrejowan/tessera/"
  name "Tessera"
  desc "Desktop library for game assets, with their licences and sources on record"
  homepage "https://github.com/ahmmedrejowan/tessera"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Support/Tessera",
    "~/Library/Logs/Tessera",
    "~/Library/Preferences/com.rejowan.tessera.plist",
    "~/Library/Saved Application State/com.rejowan.tessera.savedState",
  ]
end
