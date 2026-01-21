class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.3/smurf-v0.1.3-darwin-arm64.tar.gz"
      sha256 "003e7fc9f73915d370f34d2b1a7269563ad978f6955d73125cdf68c3eb521130"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.3/smurf-v0.1.3-darwin-amd64.tar.gz"
      sha256 "6fe19ab95281ae6b1760646d1b5ae066ed738643fde0a6214f47cf4d4620e1da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.3/smurf-v0.1.3-linux-amd64.tar.gz"
      sha256 "0ada7c20917ffd24b72e6d9c8eca7af275f19c11c35e74f34c106c4a7a410752"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.3/smurf-v0.1.3-linux-arm64.tar.gz"
      sha256 "0c1cc6bb36ab7b57849e16930455ace57baa89a55d29b9d8bf09eeee751c1456"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end