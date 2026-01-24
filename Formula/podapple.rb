class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/0.1.0/podapple_0.1.0_Darwin_arm64.tar.gz"
      sha256 "c24783d0c857ddbc6190af01baf9acfcf6233e4f200584d2b32d6b49537c7aa1"
    else
      url "https://github.com/joncrangle/podapple/releases/download/0.1.0/podapple_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "adaff51648ab0d74ea82106ad7b8d3b5776831fd96663f3b8c522cfac659dfa2"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
