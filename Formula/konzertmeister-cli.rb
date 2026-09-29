class KonzertmeisterCli < Formula
  desc "CLI for the Konzertmeister API"
  homepage "https://github.com/nikbucher/konzertmeister-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.2.0/km-aarch64-apple-darwin.tar.gz"
      sha256 "cae8daaff67fc77f240c650faed4b470a0d73688fbcd5671193d05211413e526"
    else
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.2.0/km-x86_64-apple-darwin.tar.gz"
      sha256 "212b3219695d457239ea88e9c1755223018866a949928ac2c9bfa237b3eb58ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.2.0/km-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1518f64b6ea597a12f14dce61e105c3ed64b43ab2c95ae5af23fdd5ab25fe744"
    else
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.2.0/km-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c290e04c3ef8266ad693a3b49846d7459fa2856201a2d8c6cddfa967bef078c"
    end
  end

  def install
    bin.install "km"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
