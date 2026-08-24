cask "lathe" do
  version "1.4.5"
  sha256 "b8ca3060a145cd595f13bd0dde117db1a5a80593d39bccbbc2bbb5ad4312864a"

  url "https://github.com/hongmono/Lathe/releases/download/v#{version}/Lathe-v#{version}.dmg"
  name "Lathe"
  desc "Safer, self-built Cmd+Tab replacement for macOS"
  homepage "https://github.com/hongmono/Lathe"

  auto_updates true
  depends_on macos: :sonoma

  app "Lathe.app"
end
