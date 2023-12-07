# Generated with JReleaser 1.9.0 at 2023-12-07T17:47:27.947859085Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "91783851f9c35c2eee89523a82a62f289f2a88e22331032f628ab38f4b8b626c"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
