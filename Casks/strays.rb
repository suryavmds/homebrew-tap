cask "strays" do
  version "0.1.0"
  sha256 "b0c445ac2479ce251137fdb546880f7b8bf570413334d485b0bb0fc661c47867"

  url "https://github.com/suryavmds/strays/releases/download/v#{version}/Strays-#{version}.zip"
  name "Strays"
  desc "Menu bar monitor for ports, dev servers, containers, and AI agent leftovers"
  homepage "https://github.com/suryavmds/strays"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Strays.app"

  uninstall quit: "com.suryavmds.strays"

  zap trash: [
    "~/Library/Application Support/Strays",
    "~/Library/Preferences/com.suryavmds.strays.plist",
  ]
end
