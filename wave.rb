# Homebrew Formula for Wave-cli

# Generated with JReleaser 1.9.0 at 2023-12-12T15:55:43.15023349Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
  version "1.1.0"
  sha256 "6e3b70a8649316139c7149e850d5401cbd44e877894541a8074ad6c331e5b7a5"
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
