class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  license "Apache-2.0"
  version "v0.0.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.0.1/smurf-darwin-amd64.zip"
      sha256 "cc35e33fa273b781ccdf8b8e5de903268f50210d24caa5d25f3273eaf4e3dbc8"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/smurf/releases/download/v0.0.1/smurf-darwin-arm64.zip"
      sha256 "6079654a2a638149c900aa4ccaa36f94cc1804902a9f1fd4918e721b77f2b4b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.0.1/smurf-linux-amd64.zip"
      sha256 "96e6900b78d67e3752629ee67d5101013d66b448944469312611cc24185764d1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/smurf/releases/download/v0.0.1/smurf-linux-arm64.zip"
      sha256 "0376b6f2df719993645b6edc4c49b2c97856b9deae2577c7e5a226b50ff94590"
    end
  end

  def install
    bin.install "smurf"
  end
end