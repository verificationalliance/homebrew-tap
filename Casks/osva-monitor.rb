cask "osva-monitor" do
  version "0.5.1"
  sha256 "011a55d5741d1f648a4acfb40c5702e8614206aa8db723c86e12887ae82c3ab0"

  url "https://github.com/verificationalliance/osva-monitor/releases/download/v#{version}/OSVA-Monitor-#{version}.zip"
  name "OSVA Monitor"
  desc "Menu bar app that checks installed software against open-source security data"
  homepage "https://verificationalliance.org/app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OSVA Monitor.app"

  zap trash: [
    "~/Library/Application Support/OSVA Monitor",
    "~/Library/Preferences/org.verificationalliance.osva-monitor.plist",
  ]
end
