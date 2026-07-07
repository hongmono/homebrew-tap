cask "sill" do
  version "1.9.0"
  sha256 "f50d9da734982bbecc0f89f1750eae233d8433e238957da7853bbab830ed4c86"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
