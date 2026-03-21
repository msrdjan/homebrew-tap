class Sai < Formula
  desc "Scan AI coding assistants sessions for leaked secrets (Claude Code CLI, Gemini CLI, and Codex CLI)"
  homepage "https://github.com/msrdjan/sai"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.1.1/sai-macos-arm64.tar.gz"
    sha256 "2ff94c2c640bf00fde79b2a666759d00cbc44bb15f25db72e961f8e49a18509f"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.1.1/sai-macos-x86_64.tar.gz"
    sha256 "bbe629ce753ccf3688b18c88f9227c86b9fa79e32759ea398a8891fbbc1d94ea"
  end

  def install
    bin.install "sai"
    bash_completion.install "sai.bash" => "sai"
    zsh_completion.install "sai.zsh" => "_sai"
    fish_completion.install "sai.fish"
  end

  test do
    assert_match "sai 0.1.1", shell_output("#{bin}/sai --version")
  end
end
