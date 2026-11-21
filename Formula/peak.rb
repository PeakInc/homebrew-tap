# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.9.0/peak-0.9.0-darwin-arm64.tar.gz"
      sha256 "5d9d7e0932cf6522adb437155b58cbc7911c03d1fb9140574fd73fd5b866cd5f"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.9.0/peak-0.9.0-darwin-x64.tar.gz"
      sha256 "ea9b173311240a83c28d6e9bf714214155ef2c59068a78fc83b734b6bc6f875e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.9.0/peak-0.9.0-linux-arm64.tar.gz"
      sha256 "3d2ad04aab377dddc8c1fc1e51061e2ac63dbfa15b2e41e982ddcea97738d579"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.9.0/peak-0.9.0-linux-x64.tar.gz"
      sha256 "b5df3d40b433a8b2bb0221ca40a0fec0e93302b5ffe6f777a2f462a32a730acd"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
