cask "osva-monitor" do
  version "0.5.0"
  sha256 "a0c50fe3ec7ba987a332ab03c0d118afed3feb404ddd2687d05afdc8a9656f79"

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
