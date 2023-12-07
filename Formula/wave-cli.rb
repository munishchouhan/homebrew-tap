# Generated with JReleaser 1.9.0 at 2023-12-07T15:32:34.40266454Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "1f45bedd55d327dcc2bf2ea3a743ee88b212a4d1e80aacd00afd13d593ce3223"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
