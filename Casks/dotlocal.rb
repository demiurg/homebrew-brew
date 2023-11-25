cask "dotlocal" do
  version "0.0.4"
  sha256 "5872bf71655d4642438354f34407266a01ea03adbee8f7531262b760cef46915"

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
