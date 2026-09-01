cask "lathe" do
  version "1.4.7"
  sha256 "1a6751d1e86b6b633e20987390701f00c3ec931c83d7441e9b80d9d5a12b1e60"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
