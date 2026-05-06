class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "1.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.3/smurf-v1.1.3-darwin-arm64.tar.gz"
      sha256 "40def12258f64b3890db20c4dd716d22eaee6078239b961cc4cae354f2b7c27f"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.3/smurf-v1.1.3-darwin-amd64.tar.gz"
      sha256 "b21cfdc8fa6230652e69e50d603e83899bf7194f30e9fd9b086aee80951405f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.3/smurf-v1.1.3-linux-amd64.tar.gz"
      sha256 "1b8cacb60068d904b2124f9f56c6ce0f51068a3e37d9bcf5e4617a96dfa59dd7"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.3/smurf-v1.1.3-linux-arm64.tar.gz"
      sha256 "8349627f69193762c4486b0ca1df00ea098f99d15d08d8af25275a93a456b02f"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end