class Sai < Formula
  desc "Scan AI coding assistants sessions for leaked secrets (Claude Code CLI, Gemini CLI, and Codex CLI)"
  homepage "https://github.com/msrdjan/sai"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.5.0/sai-macos-arm64.tar.gz"
    sha256 "28951178c5b17c8544b43d5940db5b160dade6e7ccfb7c21a6f711cfe6544927"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.5.0/sai-macos-x86_64.tar.gz"
    sha256 "9fc74c9c20fc1f49ddfa6a79ff2ec60a826755d7355cf090f6c028e990fb380b"
  end

  def install
    bin.install "sai"
    bash_completion.install "sai.bash" => "sai"
    zsh_completion.install "sai.zsh" => "_sai"
    fish_completion.install "sai.fish"
  end

  test do
    assert_match "sai 0.5.0", shell_output("#{bin}/sai --version")
  end
end
