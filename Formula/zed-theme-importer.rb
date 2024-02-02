class ZedThemeImporter < Formula
  desc "Zed theme importer"
  homepage "https://github.com/zed-industries/zed"
  url "https://github.com/zed-industries/zed/archive/refs/tags/v0.121.1-pre.tar.gz"
  sha256 "f79917307a12a27ca1199410d6611d5ec8225f82b8b57599dbd4613b96d31464"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/theme_importer")
  end

  test do
    system "#{bin}/theme_importer", "--help"
  end
end
