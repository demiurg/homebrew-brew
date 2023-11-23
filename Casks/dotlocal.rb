cask "dotlocal" do
  version "0.0.2"
  sha256 "7c09799cf7b156c1fed9b9e0d9e3010124bd227968f52bb9666dd47c1a9b4cb1"

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
