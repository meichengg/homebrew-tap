cask "disk-keep-alive" do
  version "1.2.0"
  sha256 "9fc0ace9a14fdf8e8304bf4afa20ddba3980a74d9cfd1f007a7f54440a1cbc41"

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
