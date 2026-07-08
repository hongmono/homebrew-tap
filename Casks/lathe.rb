cask "lathe" do
  version "1.3.0"
  sha256 "a62fae038047fc1365102082ac2906986509eddca7c07689564abcdb37d3eecb"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
