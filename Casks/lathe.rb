cask "lathe" do
  version "1.3.2"
  sha256 "5fcb1598026324c562fa70d06186a182be73624c73e477fbda43f07f0589b4bf"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
