class ZedThemeImporter < Formula
  desc "Zed theme importer"
  homepage "https://github.com/zed-industries/zed"
  url "https://github.com/zed-industries/zed/archive/refs/tags/v0.152.4.tar.gz"
  sha256 "34ea29b4904b5d0c999f503db705780f080930b5e58275772861ab60e391fbab"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/theme_importer")
  end

  test do
    system "#{bin}/theme_importer", "--help"
  end
end
