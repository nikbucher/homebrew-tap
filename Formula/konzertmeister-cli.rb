class KonzertmeisterCli < Formula
  desc "CLI for the Konzertmeister API — manage appointments for music groups"
  homepage "https://github.com/nikbucher/konzertmeister-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.1.0/km-aarch64-apple-darwin.tar.gz"
      sha256 "d6d0c770782845696974051cb02d8f649c45aac07e560f5fbac268bb2b719fda"
    end

    on_intel do
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.1.0/km-x86_64-apple-darwin.tar.gz"
      sha256 "21ca383b1e7eafc7b66f3d4f4c3f66d4811a16accca7507007f7686f0efc7278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.1.0/km-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be9ead1306ca09451b0e0270e6eed93bed09b3f613c8d3d4e7b3e9ca05511202"
    end

    on_intel do
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.1.0/km-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a81fdcbe091ec39d6bd4db5ca38bd73311420db34d6d7844fe6d315d6a2e4b13"
    end
  end

  def install
    bin.install "km"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
