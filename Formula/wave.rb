# Generated with JReleaser 1.9.0 at 2023-12-12T16:04:16.191249436Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "5bce9d39c50e402a1333beb403a37290758b081e6188a6c5f18b622aae17bcf6"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "38360b23ec2ebf732d235e0893e0a4303e8b68b0d405ac008a96a0f75e71edd0"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "be537ffde066e9a3788a517e8c2903af751af61430ac8292f6f59cc3b80633d0"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "be537ffde066e9a3788a517e8c2903af751af61430ac8292f6f59cc3b80633d0"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
