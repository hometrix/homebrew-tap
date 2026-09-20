cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "61b47a0f5a9031ebb71949992eed6e49689665f27e412e4cc9ffb7fc5662f75a"

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
