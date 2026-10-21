# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.3.0/peak-0.3.0-darwin-arm64.tar.gz"
      sha256 "1d72f81d30d0f6a319028a3db6bbafdcabfb1a5c188ffc1724bfafcd050d2489"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.3.0/peak-0.3.0-darwin-x64.tar.gz"
      sha256 "0983b38d789d9c692bcf8faf545fa367509fd8895574e6ce35317c37f86d3aa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.3.0/peak-0.3.0-linux-arm64.tar.gz"
      sha256 "1508110c642b1ae53b48b4ea38ee221ca984edef33c531bf220a85d6808ec472"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.3.0/peak-0.3.0-linux-x64.tar.gz"
      sha256 "bc0ecad722623be5c6ead82f449174cce1993c02203a8e93af1ed3efee4a757e"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
