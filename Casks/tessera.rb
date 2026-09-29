cask "tessera" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "5e860876bf57243d5164ed5f5c55ca441b6ef611328021f63ab3dbb4b2697604",
         intel: "32f8ea1ddb6bfd2ae6384dfc86a1abd292e6465d34621c81ea106ce2883d57ef"

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
