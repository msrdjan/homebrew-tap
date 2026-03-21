class Sai < Formula
  desc "Scan AI coding assistants sessions for leaked secrets (Claude Code CLI, Gemini CLI, and Codex CLI)"
  homepage "https://github.com/msrdjan/sai"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.1.0/sai-macos-arm64.tar.gz"
    sha256 "88fc4385a32d42c14fe5cb2920a8faf7f1235ee43f32ddd9afe29247df158fc2"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.1.0/sai-macos-x86_64.tar.gz"
    sha256 "09d5a9fd3a4ec2fd11c89bc72a32adb62bb985030c3a1da25d9b8bdbe2d480de"
  end

  def install
    bin.install "sai"
  end

  test do
    assert_match "sai 0.1.0", shell_output("#{bin}/sai --version")
  end
end
