cask "audio-snip" do
  version "0.4.1"

  on_arm do
    sha256 "c4fd80055f6afbb9e4783cc95d888cfc0171c993d7d84c4ba6e746a10b981701"
    url "https://github.com/nikbucher/audio-snip/releases/download/v#{version}/AudioSnip_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8d26930b2bfc8d5362510e75ece74e8863555a84387bb25f4b776728774945e7"
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
