# Homebrew Formula for Wave-cli

# Generated with JReleaser 1.9.0 at 2023-12-12T15:04:20.43094772Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/seqeralabs/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
  version "1.1.0"
  sha256 "6ce417f40c87f52459b2fe9275223732b3ff666398279fc9ab165864b9cdc34e"
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
