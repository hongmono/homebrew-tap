cask "lathe" do
  version "1.4.1"
  sha256 "ad33d026d4b20d0f37578f0dc81e1e618e92c9633311444b694b26a06c60f8da"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
