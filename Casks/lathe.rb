cask "lathe" do
  version "1.9.2"
  sha256 "886c12693ef668954b1223b800a825fe147e7274d3ac6b4bd7e09d50ab625164"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
