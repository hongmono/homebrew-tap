cask "lathe" do
  version "1.4.0"
  sha256 "789289ae30fcd563a4f3637310a7fc445ca07ecac9ad944a42d6d68e803afa01"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
