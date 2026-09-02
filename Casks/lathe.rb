cask "lathe" do
  version "1.7.0"
  sha256 "476c50f758f573a1b5a47abaff1747246b325ea7fb7ae469f90124e062fc79d0"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
