cask "gitscope" do
  version "0.1.11"
  sha256 "0f8e65bc8ecdd92b7974ce76fb9ef5583bcf481e199cb2cdccd08c451c5f388d"

  url "https://github.com/hongmono/GitScope/releases/download/v#{version}/GitScope-#{version}-macOS-arm64.dmg"
  name "GitScope"
  desc "Multi-repository Git log and branch graph viewer"
  homepage "https://github.com/hongmono/GitScope"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "GitScope.app"
end
