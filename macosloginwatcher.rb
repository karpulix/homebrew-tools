class Macosloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/macosloginwatcher"
  url "https://github.com/karpulix/macosloginwatcher/releases/download/v1.0.24/macosloginwatcher-1.0.24.tar.gz"
  sha256 "8178ca8a60dd48775f35f144777293658d8fbd50f28d265ca8effd45b6a0a8da"
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