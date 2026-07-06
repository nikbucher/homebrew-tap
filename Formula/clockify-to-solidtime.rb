class ClockifyToSolidtime < Formula
  desc "CLI tool to migrate time tracking data from Clockify to Solidtime"
  homepage "https://github.com/nikbucher/clockify-to-solidtime"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v#{version}/clockify-to-solidtime-aarch64-apple-darwin.tar.gz"
      sha256 "1adf44fc54ac534cf31d9389d60b64cba13a6fc3148301a6d88a43fcdba9b974"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v#{version}/clockify-to-solidtime-x86_64-apple-darwin.tar.gz"
      sha256 "ce1980a5165e5b358846306a26a6990243da47721f907d54c496c4243e472d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v#{version}/clockify-to-solidtime-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4475fa24f2b478edfc2cc733b941b87c216348a0a02dd25d91e3f32b21e57ae"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v#{version}/clockify-to-solidtime-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a41ead4751898842b846be6334189cbf3e863a0956ab862cdb5504cbb8a84182"
    end
  end

  def install
    bin.install "clockify-to-solidtime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clockify-to-solidtime --version")
  end
end
