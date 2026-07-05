cask "lathe" do
  version "1.1.2"
  sha256 "5af6ac36fdbdad49574cc28a3920d9bc79cc6a37b8eb1268a148c23ac09539a3"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
