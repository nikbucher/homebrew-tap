cask "audio-snip" do
  version "0.4.0"

  on_arm do
    sha256 "d1ab732e70ea873e7754b00db56997480c17ca88696c2bff3b77f2eb35959079"
    url "https://github.com/nikbucher/audio-snip/releases/download/v#{version}/AudioSnip_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "67a0bc40984cf729900cdd0e0c5927ea485bb777247e51dc29255c42a99100cf"
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
