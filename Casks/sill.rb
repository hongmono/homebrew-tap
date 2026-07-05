cask "sill" do
  version "1.0.0"
  sha256 "9a4be46a21ac69865c69f27dcd0d642001fa0ace9257ef13236b5d059aae2b07"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
