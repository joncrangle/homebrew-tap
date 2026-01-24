class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.1/podapple_0.1.1_Darwin_arm64.tar.gz"
      sha256 "754c67ef6fc5230f7c2bcf7e1be1083425cde055b4ba573d1e2c2cfb7e8ed1db"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.1/podapple_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "a3a923e0c9d7a1d8352c1e365afc5d17f254995a39756235d5400fc4d853841c"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
