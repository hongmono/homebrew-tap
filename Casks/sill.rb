cask "sill" do
  version "1.8.0"
  sha256 "ceb0a3bb51bc628a0f5853638505f706c83263d62c0e890a34e11057aecfef02"

  url "https://github.com/hongmono/Sill/releases/download/v#{version}/Sill-v#{version}.dmg"
  name "Sill"
  desc "Menu bar screenshot app that stacks captures at the screen corner"
  homepage "https://github.com/hongmono/Sill"

  auto_updates true
  depends_on macos: :ventura

  app "Sill.app"

  zap trash: "~/Library/Application Support/Sill"
end
