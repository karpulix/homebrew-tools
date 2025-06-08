class Macosloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/macosloginwatcher"
  url "https://github.com/karpulix/macosloginwatcher/releases/download/v1.1.2/macosloginwatcher-1.1.2.tar.gz"
  sha256 "53bc454e6fa0166ab8c90c19ccd365834223c5e9ade2f799194b8d9c515bd4c0"
  license "MIT"

  def install
    bin.install "macosloginwatcher.sh" => "macosloginwatcher"
    chmod 0755, bin/"macosloginwatcher"
  end

  test do
    assert_match "macosloginwatcher version", shell_output("#{bin}/macosloginwatcher --version")
  end

  def caveats
    <<~EOS
      After installation, run:
        macosloginwatcher --setup
      to configure your Telegram bot token and chat ID.
    EOS
  end
end 