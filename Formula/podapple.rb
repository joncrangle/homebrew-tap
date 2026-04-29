class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.2.1/podapple_0.2.1_Darwin_arm64.tar.gz"
      sha256 "37423f280c3137c783b6ccbc95299a3a1c9dce7532539d8d77ef30d14bc6ea00"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.2.1/podapple_0.2.1_Darwin_x86_64.tar.gz"
      sha256 "b44a507d2d38fcb146625173527cc8ae28adab9c84a9bf9b9f424433367277d1"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
