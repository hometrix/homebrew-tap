cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "39c50c718f40462c9b12ff4ca91f44db791c4005cb73ebd0b4338c3bb93f4703"

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
