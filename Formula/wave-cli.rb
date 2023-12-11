# Generated with JReleaser 1.9.0 at 2023-12-11T13:25:49.480077213Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "841f917b744381f4dfffe8d9582e53f234ca38a47e851110c7ab4cc15487c10c"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
