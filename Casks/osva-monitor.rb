cask "osva-monitor" do
  version "0.3.0"
  sha256 "ee2ab6312fcbba3f955e86bcf13863ba1513a92ba9208f3c03071b139f8666c4"

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
