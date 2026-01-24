class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.2/podapple_0.1.2_Darwin_arm64.tar.gz"
      sha256 "2c1cc63661397ffdded6d6bcf9ad0880097ee334a7f1e845b48d5f06b3e635ed"
    else
      url "https://github.com/joncrangle/podapple/releases/download/v0.1.2/podapple_0.1.2_Darwin_x86_64.tar.gz"
      sha256 "9159081271e98af9d30dc72be0cee809b75176c98fc2ad2caf87ca0be0405ac5"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
