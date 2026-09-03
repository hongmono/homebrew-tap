cask "lathe" do
  version "1.10.0"
  sha256 "993af8f9f17b1de8270fa07f53a0d7e62bedb4ecc53129526ceb9448080b2c94"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
