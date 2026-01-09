class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-amd64.tar.gz"
      sha256 "c550f108b395386e3b8b96f5a39c7c2ebf7e63b4b06391a9642d5aa38f3ad70d"  # ← REAL SHA
    end

    if Hardware::CPU.arm?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-arm64.tar.gz"
      sha256 "6079654a2a638149c900aa4ccaa36f94cc1804902a9f1fd4918e721b77f2b4b5"  # ← Get this one too
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-amd64.tar.gz"
      sha256 "96e6900b78d67e3752629ee67d5101013d66b448944469312611cc24185764d1"  # ← Get this
    end

    if Hardware::CPU.arm?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-arm64.tar.gz"
      sha256 "0376b6f2df719993645b6edc4c49b2c97856b9deae2577c7e5a226b50ff94590"  # ← Get this
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end