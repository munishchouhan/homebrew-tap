# Generated with JReleaser 1.11.0 at 2024-04-11T13:45:36.640988459Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.3.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-linux-x86_64", :using => :nounzip
    sha256 "9dd151318200e3bcfe0b2be64e67a22d4e02018b6c7a13e755f70bf1157f048b"

    def install
      bin.install "wave-1.3.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-macos-arm64", :using => :nounzip
    sha256 "f454d91157ebc46a6f0685bcb6e076fbae959b38783ca49b19dc3630b6129132"

    def install
      bin.install "wave-1.3.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-macos-x86_64", :using => :nounzip
    sha256 "c43c3207825f242c7de9e3c1ec2859370cba7a5d2b569d45c3c241a36fb5ef35"

    def install
      bin.install "wave-1.3.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.3.2", output
  end
end
