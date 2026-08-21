cask "lathe" do
  version "1.4.2"
  sha256 "8afc4ad416ce0c130917513eca88bb5569763efb20ae62b9229c7eec9cfe277a"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
