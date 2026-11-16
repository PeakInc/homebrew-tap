# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.8.0/peak-0.8.0-darwin-arm64.tar.gz"
      sha256 "66c0dda27e809ece2cb7fd4be02c5a544a81add101481f01f0385a5d0ae3b64e"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.8.0/peak-0.8.0-darwin-x64.tar.gz"
      sha256 "ffc322f63bf50e6ae2bf0e85586824bac18707414cdb65e495e883334cd0975e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.8.0/peak-0.8.0-linux-arm64.tar.gz"
      sha256 "9f8bc2c850b4c90400e3262609f41094ddf20e1b9845a55ea6bc0c52737c90a7"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.8.0/peak-0.8.0-linux-x64.tar.gz"
      sha256 "109f1c7606d31667241b8cb22f0b794f9f04f1ef4ea28deeb11a2d649f4df8ec"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
