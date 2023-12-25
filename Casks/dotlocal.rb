cask "dotlocal" do
  version "0.0.6"
  sha256 "0e7798c0ccc5530cdf80f4c3a58e31ef38c2b00b56a00b1b8cfdc033a321ae85"

  url "https://degreat.co.uk/packages/DotLocal-#{version}.zip"
  name "DotLocal"
  desc "Mirror your production domains on your .local machine"
  homepage "https://degreat.co.uk/dotlocal"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sonoma"
  depends_on formula: "blackmann/brew/dotlocalctl"

  app "DotLocal.app"
end
