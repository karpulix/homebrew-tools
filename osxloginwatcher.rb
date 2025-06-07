class Osxloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/osxloginwatcher"
  url "https://github.com/karpulix/osxloginwatcher/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "e808ef8b9f5b41f250897798e0d7d5ceee9241a3c1e05e6a0e59789bcf3ff056"
  license "MIT"

  def install
    bin.install "osxloginwatcher.sh" => "osxloginwatcher"
    chmod 0755, bin/"osxloginwatcher"
  end

  test do
    assert_match "osxloginwatcher version", shell_output("#{bin}/osxloginwatcher --version")
  end

  def caveats
    <<~EOS
      After installation, run:
        osxloginwatcher --setup
      to configure your Telegram bot token and chat ID.
    EOS
  end
end 