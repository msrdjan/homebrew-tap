class Sai < Formula
  desc "Scan AI coding assistants sessions for leaked secrets (Claude Code CLI, Gemini CLI, and Codex CLI)"
  homepage "https://github.com/msrdjan/sai"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.3.0/sai-macos-arm64.tar.gz"
    sha256 "fb71aa3ae4ce345a8fe4bf2438c51a1e712d658fe848631752ef7c0d528f2b55"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/sai-v0.3.0/sai-macos-x86_64.tar.gz"
    sha256 "7c673ae1392d475645c3dbae10eaafbaaec73a72e5a01cf34ec454dca29ff95b"
  end

  def install
    bin.install "sai"
    bash_completion.install "sai.bash" => "sai"
    zsh_completion.install "sai.zsh" => "_sai"
    fish_completion.install "sai.fish"
  end

  test do
    assert_match "sai 0.3.0", shell_output("#{bin}/sai --version")
  end
end
