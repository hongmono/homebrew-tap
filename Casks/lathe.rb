cask "lathe" do
  version "1.2.0"
  sha256 "8e501e2b0ac0537ceae7ce2d0dc8d3112643daca623b89cf404cbaf82446322e"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
