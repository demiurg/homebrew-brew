class Dotlocalctl < Formula
  desc "Backend CLI for DotLocal"
  homepage "https://github.com/blackmann/dotlocalctl"
  url "https://github.com/blackmann/dotlocalctl/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "418f2aaf82f70cf060491a3e6e260c7e8bfecef7441cb1e15b66f57318924151"
  license "MIT"

  depends_on "rust" => :build
  depends_on "caddy"

  def install
    system "cargo", "install", *std_cargo_args
  end

  def post_install
    system "dotlocalctl", "configure"
  end

  test do
    system "#{bin}/dotlocalctl", "--version"
  end
end
