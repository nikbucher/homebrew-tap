class ClockifyToSolidtime < Formula
  desc "CLI tool to migrate time tracking data from Clockify to Solidtime"
  homepage "https://github.com/nikbucher/clockify-to-solidtime"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.2/clockify-to-solidtime-aarch64-apple-darwin.tar.gz"
      sha256 "50dd125d92b02902629856af5164a33739e3c598be17016c1d12e93291fabdc9"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.2/clockify-to-solidtime-x86_64-apple-darwin.tar.gz"
      sha256 "a289cfff4ef8676a0e9eb0358769371f485a156b01563207a870d1dcc1c8d40f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.2/clockify-to-solidtime-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21cfd0ccdc5de69f0f2fecb40e4c95ed3103c208caba88e476b8aed3f6f8a722"
    end

    on_intel do
      url "https://github.com/nikbucher/clockify-to-solidtime/releases/download/v0.1.2/clockify-to-solidtime-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10c6660c5b28280df169cb7377f0590d0e43d73f97db4878e2a8ad85d401d899"
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
