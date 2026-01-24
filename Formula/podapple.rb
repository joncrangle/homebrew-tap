class PodApple < Formula
  desc "A modern, terminal-based Apple Podcasts synchronizer built for speed and simplicity."
  homepage "https://github.com/joncrangle/podapple"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      ae0544de270f05e4bdbddda0b3c925d5300f07c5cb2201b8fdf87f"
    else
      be5dc8367a6cb3fa44f29266421a0b8b772f71566acd41a879a96ccdd659e5"
    end
  end

  def install
    bin.install "podapple"
  end

  test do
    system "#{bin}/podapple", "--version"
  end
end
