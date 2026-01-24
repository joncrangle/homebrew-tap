class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.3/podapple_0.1.3_Darwin_arm64.tar.gz"
      sha256 "ac8ac4dfe9945f4ac346c8453fa73e149db66e9a57e6b66e0f91acd1c98787a3"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.3/podapple_0.1.3_Darwin_x86_64.tar.gz"
      sha256 "e7c1398a9f66b63b028d0e6a1546554b15ab995d16c4a5ae22e751dedb05c2e2"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
