class Smurf < Formula
  desc "CloudNative CI/CD Management Tool"
  homepage "https://github.com/clouddrove/smurf"
  version "1.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.9/smurf-v1.1.9-darwin-arm64.tar.gz"
      sha256 "146e12543f13b8de7b41fdf3934015fc5b5367ff4077ffdc867199192f93b6b3"
    end
    
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.9/smurf-v1.1.9-darwin-amd64.tar.gz"
      sha256 "c7c08662967e83d51af25bf29eddd2e40284de1aff393ff55b1890711bcc8efa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.9/smurf-v1.1.9-linux-amd64.tar.gz"
      sha256 "62b8202dd60895162212eace93c331d0efa3cdb0112816307b120072e907c4a6"
    end
    
    on_arm do
      url "https://github.com/clouddrove/smurf/releases/download/v1.1.9/smurf-v1.1.9-linux-arm64.tar.gz"
      sha256 "81d2bfdc3b0420a6054a052a70e905d922205d0e11085d61bd23bd46c14a9124"
    end
  end

  def install
    bin.install "smurf"
  end

  test do
    system "#{bin}/smurf", "--version"
  end
end
