# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.7.0/peak-0.7.0-darwin-arm64.tar.gz"
      sha256 "82438d8349a35340787b6baeefe573c14a8a8fb1f758ced9afcc62db9ac84786"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.7.0/peak-0.7.0-darwin-x64.tar.gz"
      sha256 "91c9c2f7cbb4a6cffb10b9a4ef321a01034d2d27c3f6d33365935093d773658a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.7.0/peak-0.7.0-linux-arm64.tar.gz"
      sha256 "7122df2df11d524f302893eae8be72561669291b1991024124db92a5a9c833b7"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.7.0/peak-0.7.0-linux-x64.tar.gz"
      sha256 "642fc1202bc70a22430f3f0dd56e91d784ea3b86cf76b477e664abdf464c5a77"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
