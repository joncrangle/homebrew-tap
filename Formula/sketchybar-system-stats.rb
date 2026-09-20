class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.1/stats_provider-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "d282fcb70114698fef54eec1f253c7f635122d885714975671ec4ca491ba2fe9"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.1/stats_provider-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "bf70879a3b4b332316ec43cabcd0cf7b717b6d8286d0774d451a1e0aa7a35282"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
