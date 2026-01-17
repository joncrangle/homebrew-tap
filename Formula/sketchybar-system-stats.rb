class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.1/stats_provider-refs/tags/0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "37f0e0a66c0339497ee3d3b51db0fd96e9fcc90f5bdf1b53d6ec99606e6caf97"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.1/stats_provider-refs/tags/0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "adaff51648ab0d74ea82106ad7b8d3b5776831fd96663f3b8c522cfac659dfa2"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
