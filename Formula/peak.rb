# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.10.0/peak-0.10.0-darwin-arm64.tar.gz"
      sha256 "3014e50e2c7c2a443290704fd3d864a8cc9265906d5f788571cec0e0e101d004"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.10.0/peak-0.10.0-darwin-x64.tar.gz"
      sha256 "21b9b7ad4a639221ed9c294bf4ba5e496b4ba3ff79d1a5499e651abb3624700d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.10.0/peak-0.10.0-linux-arm64.tar.gz"
      sha256 "ab95a057d35010af8dee99ec4ee19a8e9a913743fb437e3e098d819f71d55dd9"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.10.0/peak-0.10.0-linux-x64.tar.gz"
      sha256 "9d18330e8f64248858ac7615458520ae43b1b1b53da7506d237381231f6e90b0"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
