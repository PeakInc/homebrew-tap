# Written by PeakInc/source's cli-brew-release.yml (cli/scripts/homebrew-formula.sh). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.5.0/peak-0.5.0-darwin-arm64.tar.gz"
      sha256 "b9f56db12f4b230533fae82daf95fc584e1ac88a954ba09d321d284bd39e40b5"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.5.0/peak-0.5.0-darwin-x64.tar.gz"
      sha256 "33f5cc2e608e565555ecf603ba3b2a0fe38b307ea0aae5949dcba14e9fff6ac5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.5.0/peak-0.5.0-linux-arm64.tar.gz"
      sha256 "3aa5898a0ff4a07b6ede1dae5a2cb0a067bbcfc17b871c610c4a10aa5f630b93"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.5.0/peak-0.5.0-linux-x64.tar.gz"
      sha256 "b610682df3094b45b5ac0b84219e6e50907b0c6869f893189ebf079652a04755"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peak --version")
  end
end
