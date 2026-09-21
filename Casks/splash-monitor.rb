cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "2a6ae8512a0b1a31d0e7e2fc031f42082a9a86783ce6a6d0b171b0862880682f"

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
