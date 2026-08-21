cask "lathe" do
  version "1.4.3"
  sha256 "1418dd5ac1793775c840b7cdd46e00fdafc62985d8a916b30151e72438b39256"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
