class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.0/stats_provider-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "42e4c7cd3e25a9e8560c42c05d1fed46ac262a64765e1c00331674a81cdbe3d4"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.9.0/stats_provider-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "d213fbedcd12a7ee10aa1ff35c72b0f8f5f5c17c7bb0785716584a6f73263597"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
