# Generated with JReleaser 1.9.0 at 2023-12-11T14:09:00.577983649Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "6e40798e47197fe5d2b3a3dcd185a337c0215ceec5e7706eca4da77905659439"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
