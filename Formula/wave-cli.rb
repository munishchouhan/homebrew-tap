# Generated with JReleaser 1.9.0 at 2023-12-05T14:52:21.914177217Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "da9bf348f84ced6f5eb99818623a95c330cdd1e5a49bf3c1108982b7987cabf8"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
