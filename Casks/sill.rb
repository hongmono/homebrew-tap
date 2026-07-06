cask "sill" do
  version "1.4.1"
  sha256 "671a6fbeb5ff56ee87c14a849ce7c22677289907d9e193e83545f014be4a7594"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
