# Generated with JReleaser 1.9.0 at 2023-12-12T19:52:13.491266847Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "31eb9bbd9a134e0322c80dc37ab955b3f746ee7265194ea69a85bfe3258e0fb2"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-osx-x86_64.zip"
    sha256 "481a3b9e65002b48e9fba26e474bdf61adceddb3903e8c34252d115c3589fac6"

    def install
      bin.install "wave-1.1.0-osx-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-osx-x86_64.zip"
    sha256 "481a3b9e65002b48e9fba26e474bdf61adceddb3903e8c34252d115c3589fac6"

    def install
      bin.install "wave-1.1.0-osx-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
