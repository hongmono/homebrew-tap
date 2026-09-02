cask "lathe" do
  version "1.8.0"
  sha256 "85e0e9b8341721804429da5c66e16ac32430480108bf2d58252499c44ce3e528"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
