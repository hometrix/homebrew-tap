cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "6ca15cedb7d022f67f1ed8d49067cc8f7e198adf98af1a9d8dbfac80af0f4b5c"

  url "https://github.com/hometrix/SplashMonitor/releases/download/v#{version}/SplashMonitor-#{version}.dmg"
  name "Splash Monitor"
  desc "Native macOS monitor and visual control panel for Inco AI Splash inference engine"
  homepage "https://github.com/hometrix/SplashMonitor"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Splash Monitor.app"

  zap trash: [
    "~/Library/Application Support/Splash",
    "~/Library/Preferences/com.incoai.splashmonitor.plist",
  ]
end
