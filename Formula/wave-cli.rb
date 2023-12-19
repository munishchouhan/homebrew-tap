# Generated with JReleaser 1.9.0 at 2023-12-19T14:28:47.822064279Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "3b600204d1fa1af4213a5d555d3273db3c5527114cb22b15b29cf053e8ad94e4"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
    sha256 "f405b18529684b924256d03c87324db1fe3ebd654197cafad5722cd1a76b5b41"

    def install
      bin.install "wave-1.1.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "24e95f60e162eaa43747cb2384fa992e521deb3f66cbf4bb4828c06c3dc912be"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
