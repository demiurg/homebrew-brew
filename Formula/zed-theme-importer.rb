class ZedThemeImporter < Formula
  desc "Zed theme importer"
  homepage "https://github.com/zed-industries/zed"
  url "https://github.com/zed-industries/zed/archive/refs/tags/v0.154.4.tar.gz"
  sha256 "c230f7c75ff3ddb1f976c1dc8e5839f315b258b997d16539879a3bc68a4339c3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/theme_importer")
  end

  test do
    system "#{bin}/theme_importer", "--help"
  end
end
