class Qai < Formula
  desc "Query AI CLI Claude Code, Gemini CLI, and Codex CLI sessions"
  homepage "https://github.com/msrdjan/qai"
  version "0.6.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.6.0/qai-macos-arm64.tar.gz"
    sha256 "0bde57f752406e47f21bbdc9cbe80a6a542267ce7047bc98794cc33d08f04b14"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.6.0/qai-macos-x86_64.tar.gz"
    sha256 "36ddbefa099a9f70bb006fa67eb9471205a12e0d0e04941e603a06f10938222c"
  end

  def install
    bin.install "qai"
    bash_completion.install "qai.bash" => "qai"
    zsh_completion.install "qai.zsh" => "_qai"
    fish_completion.install "qai.fish"
  end

  test do
    assert_match "qai v#{version}", shell_output("#{bin}/qai version")
  end
end
