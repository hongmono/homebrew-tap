cask "lathe" do
  version "1.4.4"
  sha256 "8fe34751a7a3f5a65eccf6d8f4a54f9fc035fc1ba945929baaae3f8095ca9a81"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
