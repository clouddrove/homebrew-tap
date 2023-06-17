class Kuconf < Formula
  desc "Update kubeconfig for all clusters reachable from all AWS profiles"
  homepage "https://github.com/clouddrove/kuconf"
  license "Apache-2.0"
  version "v0.0.3"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.3/kuconf-darwin-amd64.zip"
      sha256 "36372e09b01bcba5d7d8884d0cda921f26470fbd6a4ed8b0b428d9f561f9fb91"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.3/kuconf-darwin-arm64.zip"
      sha256 "e979e88b42acf3c5b6a30c5a5833198ca36da55644dccdcda8928c9c335adf21"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.3/kuconf-linux-amd64.zip"
      sha256 "cd848d25a97faebd6f5cf1c2ab6b174affb8d3b30847320896bbc9d8b1ccf947"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.3/kuconf-linux-arm64.zip"
      sha256 "10248568404f5ae2fb9833e6172514a2f6ea8f211c34fb228db3e1f7816a0915"
    end
  end

  def install
    bin.install "kuconf"
  end
end