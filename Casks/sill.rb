cask "sill" do
  version "1.3.0"
  sha256 "bdd5eeb9a3daa72ce039606c95ec1c04c4f4b9fe724aae34b40d66ec9ee27c90"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
