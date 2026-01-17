class PodcastsSync < Formula
  desc "Sync Apple Podcasts to external media"
  homepage "https://github.com/joncrangle/podcasts-sync"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joncrangle/podcasts-sync/releases/download/v0.3.1/podcasts-sync_Darwin_arm64.tar.gz"
      sha256 "062f7ccd4208c36fad8de65f6c59fb913ef5a079226deef401ea053ce34398b6"
    else
      url "https://github.com/joncrangle/podcasts-sync/releases/download/v0.3.1/podcasts-sync_Darwin_x86_64.tar.gz"
      sha256 "11614a4f42c8f5310bd9f71c9c5a5579a901100c4646db946aa83152660234ed"
    end
  end

  def install
    bin.install "podcasts-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/podcasts-sync --version")
  end
end
