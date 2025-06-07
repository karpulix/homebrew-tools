class Macosloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/macosloginwatcher"
  url "https://github.com/karpulix/macosloginwatcher/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "2174af7b1b97319ccee5d60dc61805431384959ce706dc6ec3c9dba539ae724a"
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