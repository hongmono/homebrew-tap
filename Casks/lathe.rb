cask "lathe" do
  version "1.8.1"
  sha256 "73dc0fc1437720bb4f239e65bf0a47576a7e915f8247356fd00a49e454d8a53d"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
