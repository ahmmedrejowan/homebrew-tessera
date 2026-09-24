# Homebrew tap for Tessera

[Tessera](https://github.com/ahmmedrejowan/tessera) is a desktop library for game assets: every
pack you collect, with its licence and its source on record.

```bash
brew tap ahmmedrejowan/tessera
brew install --cask tessera
```

Homebrew clears the download flag as it installs, so macOS opens Tessera without asking you to
allow it in Privacy & Security.

To update, `brew upgrade --cask tessera`. To remove it and everything it kept,
`brew uninstall --zap --cask tessera`.

The cask here is written by Tessera's own release workflow, from the checksums published with each
release. Problems with the app itself belong in
[its issues](https://github.com/ahmmedrejowan/tessera/issues).
