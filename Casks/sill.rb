cask "sill" do
  version "1.5.0"
  sha256 "575eb615e369afdbede8bad969e053691fb20d42262f4016c865d6d634b189b6"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
