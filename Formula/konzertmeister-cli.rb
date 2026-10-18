class KonzertmeisterCli < Formula
  desc "CLI for the Konzertmeister API"
  homepage "https://github.com/nikbucher/konzertmeister-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.3.0/km-aarch64-apple-darwin.tar.gz"
      sha256 "d17c38ec6fadc53986607d97a41048aff526df02d0462d34a899a98921434627"
    else
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.3.0/km-x86_64-apple-darwin.tar.gz"
      sha256 "1f36834c1ce653a3e22558eb3611acab746c6613363be2a3ce68bde4b281c920"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.3.0/km-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d07a6569f66a71c5be4d372c7b4225e318f8df6b59bc73553e8262d5e8da3e0d"
    else
      url "https://github.com/nikbucher/konzertmeister-cli/releases/download/v0.3.0/km-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "429e5ca55581ccf11b775201e8c30613812726ada3466cea775a568a6fc05577"
    end
  end

  def install
    bin.install "km"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/km --version")
  end
end
