cask "lathe" do
  version "1.5.0"
  sha256 "84e0c5f12653d726aa094c3642f416c9ae1dbc8d8fbeda0b4a8918f078a6c686"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
