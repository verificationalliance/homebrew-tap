cask "osva-monitor" do
  version "0.1.0"
  sha256 "3cdd1dfd13117ecef1b837a364fbd0a69460939317876179c351a48b63c48ef5"

  url "https://github.com/verificationalliance/osva-monitor/releases/download/v#{version}/OSVA-Monitor-#{version}.zip"
  name "OSVA Monitor"
  desc "Menu bar app that checks installed software against open-source security data"
  homepage "https://verificationalliance.org/app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "OSVA Monitor.app"

  zap trash: [
    "~/Library/Application Support/OSVA Monitor",
    "~/Library/Preferences/org.verificationalliance.osva-monitor.plist",
  ]
end
