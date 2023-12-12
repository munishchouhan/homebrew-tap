# Generated with JReleaser 1.9.0 at 2023-12-12T18:13:11.171551341Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "3021360265c3fd1dfd56a090d57d387969c3e94854c9b769b2c25870472ac4c7"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
