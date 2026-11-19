cask "osva-monitor" do
  version "0.3.1"
  sha256 "5c6518bc755cbba5a9d636212e8b367632ea1d7391b69c2e5996242bc66b00ae"

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
