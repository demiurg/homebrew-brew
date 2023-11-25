cask "dotlocal" do
  version "0.0.3"
  sha256 "192e86a2cca9da40594df3a98548fbccc6a72004a5fc51668d28881a7468d040"

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
