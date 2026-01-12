class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-arm64.tar.gz"
      sha256 "6079654a2a638149c900aa4ccaa36f94cc1804902a9f1fd4918e721b77f2b4b5"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-amd64.tar.gz"
      sha256 "09ea6e3aa62d780c61bdb720026ca74689e3cdbbdc416b17d520c1719a17a8dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-amd64.tar.gz"
      sha256 "a691a72005cc130073441a4bd9275409b54a6daa88a816db17ee999dd8d2526c"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-arm64.tar.gz"
      sha256 "0c752a182218e18c7d8a0347e559c3392c5efc256637e1016f422de2aacac9a4"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end
