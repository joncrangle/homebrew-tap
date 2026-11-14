cask "castoff" do
  version "0.1.0"
  sha256 "385703faccb0ef2f439b3998ba74672cf39bc0d9c51d92a3932f5abedd14be2e"

  url "https://github.com/joncrangle/castoff/releases/download/v#{version}/Castoff-#{version}.app.zip"
  name "Castoff"
  desc "Copy downloaded Apple Podcasts episodes to an external drive"
  homepage "https://github.com/joncrangle/castoff"

  depends_on macos: :monterey

  app "Castoff.app"

  # Castoff is signed ad hoc, not notarized: clear the quarantine flag so it opens.
  # Homebrew sets the flag; mise's brew-cask manager never does, hence must_succeed.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Castoff.app"],
        must_succeed: false
  end
end
