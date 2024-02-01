class ZedThemeImporter < Formula
  desc "Zed theme importer"
  homepage "https://github.com/zed-industries/zed"
  url "https://github.com/zed-industries/zed/archive/refs/tags/v0.120.5.tar.gz"
  sha256 "48bd6a93444739f80865ae417f6a4c446b4d7fe22cdcc2a5aed9a943e42e65f1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/theme_importer")
  end

  test do
    system "#{bin}/theme_importer", "--help"
  end
end
