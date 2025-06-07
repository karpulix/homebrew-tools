class Osxloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/osxloginwatcher"
  url "https://github.com/karpulix/osxloginwatcher/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8981a8eec7eee8b39d17c5285f43852ecd0c0167b030cf08050f726a71302768" # You'll need to replace this with actual SHA256
  license "MIT"

  def install
    bin.install "osxloginwatcher.sh" => "osxloginwatcher"
    chmod 0755, bin/"osxloginwatcher"
  end

  def post_install
    system "osxloginwatcher", "--setup"
  end

  test do
    system "osxloginwatcher", "--version"
  end
end 