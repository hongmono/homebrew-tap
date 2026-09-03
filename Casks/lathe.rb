cask "lathe" do
  version "1.9.1"
  sha256 "dd80566c4b0e3a3088288b160caf5aad5d16ddcfd312035f8efdd76ff25905e0"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
