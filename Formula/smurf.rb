class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.0.0/smurf-v1.0.0-darwin-arm64.tar.gz"
      sha256 "a82f2807274d6f95cdee1cb0fbb4fd1046d65f2910fa67c1522805296fa04403"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.0.0/smurf-v1.0.0-darwin-amd64.tar.gz"
      sha256 "ade7fcbbc21b44ae97d64316189c8b86f23b08d13bf2e7638cfa5d2ceedc74b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.0.0/smurf-v1.0.0-linux-amd64.tar.gz"
      sha256 "c553ee2269c3a273a52fa4a7f2e3f20664ece990a5af290f71937ee1bce45006"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.0.0/smurf-v1.0.0-linux-arm64.tar.gz"
      sha256 "d80df8af0879ef7614866788dc2f351a772197ed0e74b4f22b1eaf71523e08cc"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end