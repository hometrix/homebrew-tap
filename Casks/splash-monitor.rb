cask "splash-monitor" do
  version "1.0.0-beta"
  sha256 "1b9ca90793cb56bc007fb510fe03a04b56f9befb0c2825de99460a5eb9b90b8b"

  url "https://github.com/hometrix/SplashMonitor/releases/download/v#{version}/SplashMonitor-#{version}.dmg"
  name "Splash Monitor"
  desc "Native macOS monitor and visual control panel for Inco AI Splash inference engine"
  homepage "https://github.com/hometrix/SplashMonitor"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Splash Monitor.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Splash Monitor.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Splash",
    "~/Library/Preferences/com.incoai.splashmonitor.plist",
  ]
end
