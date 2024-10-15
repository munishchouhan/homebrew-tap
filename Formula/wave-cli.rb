# Generated with JReleaser 1.14.0 at 2024-10-15T04:22:05.61215871Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0/wave-1.5.0-linux-x86_64", :using => :nounzip
    sha256 "f40fe102b75a170a55c29a0ac041f230ed07454eeb43ee6fd55db56b73ca5e04"

    def install
      bin.install "wave-1.5.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-x86_64", :using => :nounzip
    sha256 "b9bc8357227ea529aec951c7d0edb50370ba8e93ba98eec15b59b26450b87e1d"

    def install
      bin.install "wave-1.5.0-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0/wave-1.5.0-macos-x86_64", :using => :nounzip
    sha256 "b9bc8357227ea529aec951c7d0edb50370ba8e93ba98eec15b59b26450b87e1d"

    def install
      bin.install "wave-1.5.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0", output
  end
end
