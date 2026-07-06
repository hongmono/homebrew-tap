cask "sill" do
  version "1.6.0"
  sha256 "d0d78800548de85ff3c5ac7beafe727dbea8a30c91c7bf33a1b230552b22fe23"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
