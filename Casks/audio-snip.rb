cask "audio-snip" do
  version "0.5.0"

  on_arm do
    sha256 "eeb2f68b7f0656e37a9fd70a914962ae46af57620c3bb0c0665f266b26c983be"
    url "https://github.com/nikbucher/audio-snip/releases/download/v#{version}/AudioSnip_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c55cd6e5b2e5e561951202994e5d9dcea239fa7a27756838ef3075401189fd54"
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
