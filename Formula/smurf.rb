class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-amd64.tar.gz"
      sha256 "GET_THIS_FROM_ACTUAL_FILE"  # Replace with actual SHA
    end

    if Hardware::CPU.arm?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-darwin-arm64.tar.gz"
      sha256 "GET_THIS_FROM_ACTUAL_FILE"  # Replace with actual SHA
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-amd64.tar.gz"
      sha256 "GET_THIS_FROM_ACTUAL_FILE"  # Replace with actual SHA
    end

    if Hardware::CPU.arm?
      url "https://github.com/clouddrove/smurf/releases/download/v0.1.0/smurf-v0.1.0-linux-arm64.tar.gz"
      sha256 "GET_THIS_FROM_ACTUAL_FILE"  # Replace with actual SHA
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end