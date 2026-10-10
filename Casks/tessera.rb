cask "tessera" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "a0344f961eac2297de6e4c61d7b3aeb7f9d7a4cc388a972640cbc8af6b41583d",
         intel: "027ad1831f65f30ca32ea8ad88c9c3c316899635f32060057dc70692ea7fa27f"

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

  # Homebrew quarantines what it installs, and these builds are signed ad-hoc rather than with a
  # paid certificate, so Gatekeeper would stop the first launch exactly as it does for someone who
  # downloaded the dmg by hand. Taking the flag off here is what makes installing through Homebrew
  # worth recommending: it is the one route that does not send a person to Privacy & Security.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Tessera.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Tessera",
    "~/Library/Logs/Tessera",
    "~/Library/Preferences/com.rejowan.tessera.plist",
    "~/Library/Saved Application State/com.rejowan.tessera.savedState",
  ]
end
