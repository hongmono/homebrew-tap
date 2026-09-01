cask "lathe" do
  version "1.6.0"
  sha256 "bc91f51db42f67de6a00607509621ff8bcf58331cc27f853709a0e3696c2992a"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
