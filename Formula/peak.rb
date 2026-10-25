# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.0/peak-0.4.0-darwin-arm64.tar.gz"
      sha256 "52d31a53604bf0abfdc3e9189629adbdb1ed3ff04b3509d4d6e32096b91a2e92"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.0/peak-0.4.0-darwin-x64.tar.gz"
      sha256 "08a35f5259d39aafa882010c72442e91e61103796136803baad884eb55c5d646"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.0/peak-0.4.0-linux-arm64.tar.gz"
      sha256 "5be3538f1114881671c5a04e1452c73c952a7f4829c93299f0205ac220406a10"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.4.0/peak-0.4.0-linux-x64.tar.gz"
      sha256 "072eb545936b50e4155c81612ad34a2da8e41d6e0b2d1e446fadd0a5d085e7e1"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
