cask "disk-keep-alive" do
  version "1.1.0"
  sha256 "4f4a09acf9a0219975ca64c25c05468d79e15c3ec3771397cc56a7674dc8f6a0"

  url "https://github.com/meichengg/disk-keep-alive/releases/download/v#{version}/DiskKeepAlive-#{version}.dmg"
  name "Disk Keep Alive"
  desc "Prevent external HDDs from spinning down"
  homepage "https://github.com/meichengg/disk-keep-alive"

  depends_on macos: ">= :monterey"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Disk Keep Alive.app"

  zap trash: "~/Library/Preferences/com.local.diskKeepalive.plist"
end
