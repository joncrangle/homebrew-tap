class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.0/podapple_0.1.0_Darwin_arm64.tar.gz"
      sha256 "b9c17f6a37337afbcdc91ff3f010d6583216407aea070f077a73a18b43851a55"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.0/podapple_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "f8bb4d1cca4bde5d915211f575567dede8fe4b6865b74b80bf6103039ec7d77a"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
