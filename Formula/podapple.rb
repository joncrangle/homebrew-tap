class Podapple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.3.0/podapple_0.3.0_Darwin_arm64.tar.gz"
      sha256 "f7f3b74ababdf0b1bc51f839fe5eeeaa67dcf463c1261bad0fefb94ea1be3876"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.3.0/podapple_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "a8f5c03ca9ef3e150852ed22af35a2aa360b5824ee35d9cf21396522d4980fea"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
