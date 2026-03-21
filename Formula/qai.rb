class Qai < Formula
  desc "Query AI CLI Claude Code, Gemini CLI, and Codex CLI sessions"
  homepage "https://github.com/msrdjan/qai"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.3.0/qai-macos-arm64.tar.gz"
    sha256 "884f5512b6375c51a215dceb12007689d75f2f4547c0fc21393da5f6151ed8f1"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.3.0/qai-macos-x86_64.tar.gz"
    sha256 "560df9e5c41d5400e27abb7cb1f2a9a41c20044cab74a5de40af747ec7c64c91"
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
