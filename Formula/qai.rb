class Qai < Formula
  desc "Query AI CLI Claude Code, Gemini CLI, and Codex CLI sessions"
  homepage "https://github.com/msrdjan/qai"
  version "0.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.4.0/qai-macos-arm64.tar.gz"
    sha256 "8324f4142cfe7e08d3e83319b7621fd442c8380138e0db1c088c62c12ba158d2"
  else
    url "https://github.com/msrdjan/homebrew-tap/releases/download/qai-v0.4.0/qai-macos-x86_64.tar.gz"
    sha256 "b032fe4c020d8d708dbc263fa116e8f44dd36788c222ff22435ae8de3dc43135"
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
