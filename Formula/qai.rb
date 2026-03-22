class Qai < Formula
  desc "Query AI CLI Claude Code, Gemini CLI, and Codex CLI sessions"
  homepage "https://github.com/msrdjan/qai"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.5.0/qai-macos-arm64.tar.gz"
    sha256 "cc0c0ce442f060370d41a3ab089fc6f9fe7a0a021ce88ecc392e0c9ff9645946"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.5.0/qai-macos-x86_64.tar.gz"
    sha256 "8c850fc97b8a01d6fd03fb446dc8c1f3fbcee08c28c2200951037fa98cdf8a04"
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
