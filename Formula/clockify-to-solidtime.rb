class ClockifyToSolidtime < Formula
  desc "CLI tool to migrate time tracking data from Clockify to Solidtime"
  homepage "https://github.com/nikbucher/clockify-to-solidtime"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.1/clockify-to-solidtime-aarch64-apple-darwin.tar.gz"
      sha256 "e8a9ff8ae132f999486869ffac77e7fd2ca380a6b6a4b72d1bc5b010e4e2b07a"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.1/clockify-to-solidtime-x86_64-apple-darwin.tar.gz"
      sha256 "da54244a10d83cc2ebd8fb01a5356d9a2dc708e7f81cec77da97cdb1d5a88ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.1/clockify-to-solidtime-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d81d4e458bfd63ee305bd3a6235a701b0c1fb880ae53f43a4eaa0f091c935a8"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.1/clockify-to-solidtime-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65c8914a0fd05774e7f245410b35f33ebe979de4cb9065e201d198a2622af1f5"
    end
  end

  def install
    bin.install "clockify-to-solidtime"
    generate_completions_from_executable(bin/"clockify-to-solidtime", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clockify-to-solidtime --version")
  end
end
