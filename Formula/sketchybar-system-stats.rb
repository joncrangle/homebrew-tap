class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.10.0/stats_provider-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "308fbb6a8206a484b55dcee84e21f5a6957356ef4cf8b4acc1e8a3007262ff12"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.10.0/stats_provider-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a6373c1fde6d54deb9a03476d800cda81a71caaa4baf7f1200cd883cdeada791"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
