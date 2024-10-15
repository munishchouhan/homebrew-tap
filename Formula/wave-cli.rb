# Generated with JReleaser 1.14.0 at 2024-10-15T03:15:50.222568849Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0-rc.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-linux-x86_64", :using => :nounzip
    sha256 "ad9aadf91f9b8b426b21199b1f26d0f9d08c351e348debcd115056e8ef6b5287"

    def install
      bin.install "wave-1.5.0-rc.4-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-macos-x86_64", :using => :nounzip
    sha256 "cd40ce4daeed6d0e36a5f2408a86df0ac0eb7bb4dc63143d16cb67e9e2841c77"

    def install
      bin.install "wave-1.5.0-rc.4-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-macos-x86_64", :using => :nounzip
    sha256 "cd40ce4daeed6d0e36a5f2408a86df0ac0eb7bb4dc63143d16cb67e9e2841c77"

    def install
      bin.install "wave-1.5.0-rc.4-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0-rc.4", output
  end
end
