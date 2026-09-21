cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "8bc3cc819eb5f18fb1e03166e0bd937dbe890eefaea8bb142763af4fc61b7e6a"

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
