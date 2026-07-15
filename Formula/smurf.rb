class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-darwin-arm64.tar.gz"
      sha256 "5b7f667313d9e0b7f182acb07c0fe046d81611287ac564d59ad3e6d0d658ae19"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-darwin-amd64.tar.gz"
      sha256 "c8a514d3a91a0cdebbaeb22d1699a5ea668c8973818f81901c60aec060b24fa0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-linux-amd64.tar.gz"
      sha256 "b7fcd4214d312ac4acdaf04e198566ed6e86685cfdc359ed908327c6eced9215"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.5/smurf-v1.1.5-linux-arm64.tar.gz"
      sha256 "40c1c8a958e05e9f4a79808589a62b09e141bf6bec36932ed6b4df83410751db"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end

sha256:40c1c8a958e05e9f4a79808589a62b09e141bf6bec36932ed6b4df83410751db