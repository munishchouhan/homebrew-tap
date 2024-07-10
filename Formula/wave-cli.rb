# Generated with JReleaser 1.13.1 at 2024-07-10T12:58:19.733834513Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.4.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.2/wave-1.4.2-linux-x86_64", :using => :nounzip
    sha256 "851ebec9067d0ad08dd8b3ecf212ee99ce7c3d409fd5335e641b042c68d8b69d"

    def install
      bin.install "wave-1.4.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.2/wave-1.4.2-macos-x86_64", :using => :nounzip
    sha256 "cf8b2bd58d85209896f2cfba7121f9fecf434d19517bc2d93f6fec9270f3c47a"

    def install
      bin.install "wave-1.4.2-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.2/wave-1.4.2-macos-x86_64", :using => :nounzip
    sha256 "cf8b2bd58d85209896f2cfba7121f9fecf434d19517bc2d93f6fec9270f3c47a"

    def install
      bin.install "wave-1.4.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.4.2", output
  end
end
