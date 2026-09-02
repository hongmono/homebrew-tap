cask "lathe" do
  version "1.8.2"
  sha256 "d49cb08d463943a4c70568641e9ab42486f2bfa59cff1a116a2fd8f9f208a853"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
