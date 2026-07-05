cask "sill" do
  version "1.1.0"
  sha256 "d6d3df19f1ec79741a7a574d2f1bcb56dc8f78837ecf47d932a495e32744b227"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
