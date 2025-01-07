# Generated with JReleaser 1.16.0 at 2025-01-07T11:03:27.581426341Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0/wave-1.5.0-linux-x86_64", :using => :nounzip
    sha256 "f1dac4f863b5e73fb2a22ec3fbc2eeaeb0dca7b555151346a567cfb203d3e837"

    def install
      bin.install "wave-1.5.0-linux-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0", output
  end
end
