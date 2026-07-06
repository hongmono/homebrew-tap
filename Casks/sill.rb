cask "sill" do
  version "1.4.0"
  sha256 "49f563ec1374f05ec6f769a8524b37f04348c1fd40aecdc9f54126c9aa9fea8a"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
