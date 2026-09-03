cask "lathe" do
  version "1.9.0"
  sha256 "b0ea3ffcc706cab221e565c07c42f521b955d1983dd3df1ef61412dbb4dd30b7"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
