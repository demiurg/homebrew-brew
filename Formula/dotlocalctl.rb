class Dotlocalctl < Formula
  desc "Backend CLI for DotLocal"
  homepage "https://github.com/blackmann/dotlocalctl"
  url "https://github.com/blackmann/dotlocalctl/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "8592c3a944b9725b8ad3d66976cff6ebf780fa5cc217a0bc642e2d04c38b42c4"
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
