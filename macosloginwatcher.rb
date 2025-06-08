class Macosloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/macosloginwatcher"
  url "https://github.com/karpulix/macosloginwatcher/releases/download/v1.1.4/macosloginwatcher-1.1.4.tar.gz"
  sha256 "2c9bc6d0b1ffb675e1fb8e46484e0600badd4bbb2f6bf733ddc135da31d01d6e"
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