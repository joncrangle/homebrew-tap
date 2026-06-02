class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.2/stats_provider-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "e6f6230dae264224ba9e6ef59323c2c3f7234ae24e98a5a5ca1ee8a1581b92fe"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.2/stats_provider-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "a845671f3a98c0aa51d283760faeddded1d92e377c80f862e3b5966eafcd0eb4"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
