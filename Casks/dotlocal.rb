cask "dotlocal" do
  version "0.0.1"
  sha256 "bc5d196d629105ec423152fd46ed1d0aab4e03e996fb0a64584029300011fc54"

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
