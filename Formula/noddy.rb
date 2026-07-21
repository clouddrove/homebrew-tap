class Noddy < Formula
  desc "macOS command-line tools for DevOps"
  homepage "https://github.com/clouddrove/noddy"
  url "https://github.com/clouddrove/noddy/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "ec55e1c4465eedf09340de1f7856dbe76dd89ff32e4f3826c32a749b6ccf6aad"
  license "Apache-2.0"

  depends_on :macos

  def install
    # Completions first: libexec.install moves toyland/ rather than copying
    # it, so these paths stop existing once it has run.
    bash_completion.install "toyland/completion/noddy.bash" => "noddy"
    zsh_completion.install "toyland/completion/_noddy"
    fish_completion.install "toyland/completion/noddy.fish"

    # noddy sources its plugins from toyland/ beside the script, so the two
    # travel together into libexec and only the entry point is linked onto
    # PATH. The script resolves symlinks before locating toyland/.
    libexec.install "noddy", "toyland"
    bin.install_symlink libexec/"noddy"
  end

  def caveats
    <<~EOS
      Optional extras some commands use:
        brew install pv        # progress bar for tar:compress
        brew install fdupes    # find:duplicated
        brew install glances   # system

      Commands that drive the UI, such as lock and eject-all, need your
      terminal granted under System Settings > Privacy & Security.
    EOS
  end

  test do
    assert_match "noddy", shell_output("#{bin}/noddy help")
    assert_match "git", shell_output("#{bin}/noddy categories")
    system bin/"noddy", "info"
  end
end
