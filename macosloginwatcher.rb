class Macosloginwatcher < Formula
  desc "Monitor and notify about macOS login events via Telegram"
  homepage "https://github.com/karpulix/macosloginwatcher"
  url "https://github.com/karpulix/macosloginwatcher/releases/download/v1.0.22/macosloginwatcher-1.0.22.tar.gz"
  sha256 "dd2fb65b4acd2d34db598c67eff618935448e110bcaa8b4d63f8f8f53b323016"
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