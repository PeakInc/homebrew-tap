# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.1/peak-0.4.1-darwin-arm64.tar.gz"
      sha256 "141a8bfe5f68b52c61181d2475655d94b91ae4c771df37b882b6673f1e298b5e"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.1/peak-0.4.1-darwin-x64.tar.gz"
      sha256 "da6be63db6b691d18b846898f7c10280109fd87cb3100468d6af31290890fd9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.1/peak-0.4.1-linux-arm64.tar.gz"
      sha256 "b5e44fd1aa94ddf90605f853e5b2358cb9a1407d5070ea8a2e6e94d3a24d2679"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.1/peak-0.4.1-linux-x64.tar.gz"
      sha256 "46de0a6d7eaa81e4504404c9e547b7470efcbb585e2741decfc9d9939b2bbd76"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
