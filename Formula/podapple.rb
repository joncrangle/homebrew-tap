class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.2.0/podapple_0.2.0_Darwin_arm64.tar.gz"
      sha256 "653b05779d8766d8aa38ea9b139127e0842dda528f6742a1115f01d20487caf4"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.2.0/podapple_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "dc1d72090ba599839736d766fd03435fe4e256befd0c86f54c0ec821d4f9c5eb"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
