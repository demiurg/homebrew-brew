cask "dotlocal" do
  version "0.0.5"
  sha256 "70263fb0614d11a9993c1bb184f7763f0695f7fb3c66058e43a4970f9bd3f175"

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
