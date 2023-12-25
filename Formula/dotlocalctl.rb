class Dotlocalctl < Formula
  desc "Backend CLI for DotLocal"
  homepage "https://github.com/blackmann/dotlocalctl"
  url "https://github.com/blackmann/dotlocalctl/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "d7b437cbed867a6114e74bd4925bc1d17beb3ead48fc0fefa36383e70add47c8"
  license "MIT"

  depends_on "rust" => :build
  depends_on "caddy"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dotlocalctl", "--version"
  end
end
