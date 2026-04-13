class Idgen < Formula
  desc "CLI tool for generating random NanoID-style identifiers"
  homepage "https://github.com/nikbucher/idgen"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/idgen/releases/download/v0.1.0/idgen-aarch64-apple-darwin.tar.gz"
      sha256 "d317fd4a83ea139e278b102cf0743c654058a5015b003400edaec4e691dc0190"
    end
    on_intel do
      url "https://github.com/nikbucher/idgen/releases/download/v0.1.0/idgen-x86_64-apple-darwin.tar.gz"
      sha256 "5aa5b3009280857c214083f57a5574fdf2d7a88fb8cbf601d273af2226c0949c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/idgen/releases/download/v0.1.0/idgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30223049f70f40c7ed2ef040380e04edc479e960ac15e2b7a9c011420e5aba9e"
    end
    on_intel do
      url "https://github.com/nikbucher/idgen/releases/download/v0.1.0/idgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4048de90308ae759e98e12e571d408b28bb6bf6340ff7596e85cfd7343770726"
    end
  end

  def install
    bin.install "idgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idgen --version")
  end
end
