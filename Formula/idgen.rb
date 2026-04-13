class Idgen < Formula
  desc "CLI for generating random identifiers with customizable alphabets and block formatting"
  homepage "https://github.com/nikbucher/idgen"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikbucher/idgen/releases/download/v0.2.0/idgen-aarch64-apple-darwin.tar.gz"
      sha256 "67dfb2c0f1a732f3d94eb1c156c67b3a54da48ed8959775d614c6b3ef59a8be4"
    end
    on_intel do
      url "https://github.com/nikbucher/idgen/releases/download/v0.2.0/idgen-x86_64-apple-darwin.tar.gz"
      sha256 "3867eca2a35de6ffd32a866872c211330ecbaa53eae82bd546db7604814a9d76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nikbucher/idgen/releases/download/v0.2.0/idgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6401448a1d1ccce9e03dd7aa1d3c46cc08644567c462243065ce9db11fc78bfa"
    end
    on_intel do
      url "https://github.com/nikbucher/idgen/releases/download/v0.2.0/idgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e52bf13f11347e57df5d9b7192f9fdd988ddf0755b031b5c041e42d847c80b42"
    end
  end

  def install
    bin.install "idgen"
    bash_completion.install "completions/idgen.bash" => "idgen"
    zsh_completion.install "completions/_idgen"
    fish_completion.install "completions/idgen.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idgen --version")
  end
end
