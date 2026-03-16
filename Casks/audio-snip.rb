cask "audio-snip" do
  version "0.4.2"

  on_arm do
    sha256 "a5a869a14f6a43fb8cf76625409eb8bfb7dfffc50eaa9b9454d9b8d6961f77d7"
    url "https://github.com/nikbucher/audio-snip/releases/download/v#{version}/AudioSnip_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a6aeb8e02eb2ddb35a24489694ba3ef2cb7164a9f54b7d7bd40056848fcec4f7"
    url "https://github.com/nikbucher/audio-snip/releases/download/v#{version}/AudioSnip_#{version}_x64.dmg"
  end

  name "AudioSnip"
  desc "Extract audio from video files using FFmpeg"
  homepage "https://github.com/nikbucher/audio-snip"

  depends_on formula: "ffmpeg"

  app "AudioSnip.app"

  zap trash: [
    "~/Library/Caches/ch.avoni.audio-snip",
    "~/Library/Preferences/ch.avoni.audio-snip.plist",
    "~/Library/Saved Application State/ch.avoni.audio-snip.savedState",
    "~/Library/WebKit/ch.avoni.audio-snip",
  ]
end
