# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.2/peak-0.4.2-darwin-arm64.tar.gz"
      sha256 "f9239bf1821df59dea5c80a7124d9954f4ebb565052584ae6153aeb7bda93a9a"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.2/peak-0.4.2-darwin-x64.tar.gz"
      sha256 "a04cd61577b3e726d9ccb81ae846cfe7312c4b68ded4faf29a556591036f16d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.2/peak-0.4.2-linux-arm64.tar.gz"
      sha256 "2a2d8279503513ae1693494b66f86ee12c9f0655a69d9aab2e2ed5b80066ec4c"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.2/peak-0.4.2-linux-x64.tar.gz"
      sha256 "e95eab9ffb8999dae74a01ba2a981d0ce16b2d63903668cdce48c9118917a533"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
