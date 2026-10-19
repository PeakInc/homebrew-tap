# Written by PeakInc/source's CLI release (packages/cli/scripts/homebrew-formula.mjs). Edits are replaced.
class Peak < Formula
  desc "Run GitHub Actions workflows on Peak's runners from your checkout"
  homepage "https://peak.inc"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.2.0/peak-0.2.0-darwin-arm64.tar.gz"
      sha256 "21d04661021579782038c51f4f13f3b95a218aaee9f3b2ffeffa5acd815e43ba"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.2.0/peak-0.2.0-darwin-x64.tar.gz"
      sha256 "bc7284b6f5784a8f015c2f108ab4cf499500bc3bdd6dac926bfcc4ff05e78cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.2.0/peak-0.2.0-linux-arm64.tar.gz"
      sha256 "57f48f45e195dc3aa945497e9e8b3f1c82d417076edb8117e5db80b076ca2cc5"
    end
    on_intel do
      url "https://github.com/PeakInc/homebrew-tap/releases/download/v0.2.0/peak-0.2.0-linux-x64.tar.gz"
      sha256 "b032042bbd0c9457d3ae5dacd831270d9790acd7759e444a1f04396035d9b2bb"
    end
  end

  def install
    bin.install "peak"
  end

  test do
    assert_match "Run a workflow", shell_output("#{bin}/peak --help")
  end
end
