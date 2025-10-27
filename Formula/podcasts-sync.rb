class PodcastsSync < Formula
  desc "Sync Apple Podcasts to external media"
  homepage "https://github.com/joncrangle/podcasts-sync"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podcasts-sync/releases/download/v0.2.1/podcasts-sync_Darwin_arm64.tar.gz"
      sha256 "5a56b11dab2f8f30e5286fb825e75b94e8ec95ee64dac56b37a4169ea56555bb"
    else
      url "https://github.com/joncrangle/podcasts-sync/releases/download/v0.2.1/podcasts-sync_Darwin_x86_64.tar.gz"
      sha256 "90cb5134a452d91b268a3c7f859844f46600d37e1f29e8aad2a3ebb10e09ace9"
    end
  end

  def install
    bin.install "podcasts-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podcasts-sync --version")
  end
end
