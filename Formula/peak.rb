# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.6.0/peak-0.6.0-darwin-arm64.tar.gz"
      sha256 "d6754506efa4466c9f36d454c475129a2f4f4fd2bd6b7364432c4eb5c0c1c68a"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.6.0/peak-0.6.0-darwin-x64.tar.gz"
      sha256 "d45e469406070b280f619d1832a091612e4eeb85ec88b683f63ec510be5029e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.6.0/peak-0.6.0-linux-arm64.tar.gz"
      sha256 "64fd32bc6363523ff80ef8f586cbb4ab556575ac24dada1f63772b5b5b8801f2"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.6.0/peak-0.6.0-linux-x64.tar.gz"
      sha256 "f49bb421ebf1b4d040fd3be1ecb02efc07ea5484715ff4380801f5347e50513d"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
