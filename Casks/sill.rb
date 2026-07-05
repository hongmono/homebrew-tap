cask "sill" do
  version "1.2.0"
  sha256 "e4ae82a4fc8071af1538807082803d5e2928e4f6d84de4e2c8b5be42c3d4d0e0"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
