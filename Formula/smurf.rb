class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-darwin-arm64.tar.gz"
      sha256 "f7f1d15e66040f8552f468bdefc5899178c936a00631d0c0283a6413c73ba895"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-darwin-amd64.tar.gz"
      sha256 "d78047843921d84b3168f5186176d752b3bfe4ab59e5b4b03f012bdc4b5dd418"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-linux-amd64.tar.gz"
      sha256 "524babfc035e267bd5237aef83984fa510461250626788cb976b7f91c8f4f07d"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-linux-arm64.tar.gz"
      sha256 "fccd0d9290b7247805ebed1570443b2645416d68f063fda26a3ed18a15d41fbd"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end