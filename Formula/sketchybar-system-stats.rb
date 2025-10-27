class SketchybarSystemStats < Formula
  desc "Simple system stats event provider for SketchyBar"
  homepage "https://github.com/joncrangle/sketchybar-system-stats"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.0/stats_provider-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b795993746731e49b28e0008e5bd5a668707ad7f14da51cef2e1eff6b17986a8"
    else
      url "https://github.com/joncrangle/sketchybar-system-stats/releases/download/0.8.0/stats_provider-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "d597243de9f96bdfbd8309d2353b9b9068b8944a979a02eefaeff7599127a0a0"
    end
  end

  def install
    bin.install "stats_provider"
  end

  test do
    system "#{bin}/stats_provider", "--version"
  end
end
