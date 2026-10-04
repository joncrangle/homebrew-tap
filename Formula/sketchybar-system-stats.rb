class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.2/stats_provider-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "eb53ec5c1780639ca5f72bc2314992503c3fb72265931c5aea371e37711e668a"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.2/stats_provider-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "3ab6ec37b94a708d1f6eb8beccde404ab60aee33412cc156ccc3cc07fd553bcd"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
