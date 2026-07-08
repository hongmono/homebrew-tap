cask "lathe" do
  version "1.3.1"
  sha256 "32076009c38c32c8178ced8a17c3010ee530c16d5dd59da8b6e47ce04a6027c1"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
