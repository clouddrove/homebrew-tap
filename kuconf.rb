class Kuconf < Formula
  desc "Update kubeconfig for all clusters reachable from all AWS profiles"
  homepage "https://github.com/clouddrove/kuconf"
  version "v0.0.1"

  on_macos do

    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.1/kuconf-darwin-amd64.zip"
      sha256 "541e377b084e908f5b30d3d97f1a0d9c55c5b55f33ff53f899d015f459a909f4"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.1/kuconf-darwin-arm64.zip"
      sha256 "2f467f0e98255f525e1a1cd8d9b1f704cf19a3c194b1da009b960e521a615671"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/clouddrove/kuconf/releases/download/v0.0.1/kuconf-linux-amd64.zip"
      sha256 "d3fc57921e6ba3c2fd8efdaa5e54e7f5a042ad0a638cda1e69f0bc5bbde18cc0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clouddrove/kuconf/releases/downloa/v0.0.1/kuconf-linux-arm64.zip"
      sha256 "966a65422eab637f84fc8ae923d112a7b0c1e81f26369f97c5062d96ca8c68a4"
    end
  end

  def install
    bin.install "kuconf"
  end
end