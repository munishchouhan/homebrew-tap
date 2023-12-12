# Homebrew Formula for Wave-cli

# Generated with JReleaser 1.9.0 at 2023-12-12T15:42:08.714831605Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip.zip"
  version "1.1.0"
  sha256 "e3ef90a6ee35a34da3a7d6194bd0c15ba621d6d38c555d94799304a71c21bbb3"
  license "MPL-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
