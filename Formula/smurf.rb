class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.2.1/smurf-v1.2.1-darwin-arm64.tar.gz"
      sha256 "2bc88a8670caba93a8a9972be41e475413ce3a8362549313104673863b53991c"
    end

    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.2.1/smurf-v1.2.1-darwin-amd64.tar.gz"
      sha256 "b2d3ced0b968ad30727a76335c574ada9631a66a51cc22a7cbf415f76d7d8131"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.2.1/smurf-v1.2.1-linux-amd64.tar.gz"
      sha256 "249eca116f8235a4430935b842ef681f4941008b376f822252ff7eef0c8c609f"
    end

    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.2.1/smurf-v1.2.1-linux-arm64.tar.gz"
      sha256 "74e6ff1f15f76f1768f04549e7929ec1778c4b836836f47bad53255f2a07b28b"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end
