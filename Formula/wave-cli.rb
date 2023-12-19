# Generated with JReleaser 1.9.0 at 2023-12-19T15:57:56.221161389Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "6006a08802c02bb8c0d4bc1aae3ad24daa1852b9770de2addf1b5d984d099af4"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64"
    sha256 "49cab605f0d53eb52868152d2a198118586250debf92addda13e34d919f367f6"

    def install
      bin.install "wave-1.1.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "316b695fa811f99d2a63544c5ad631de82a0b9880b824b6c6cb02cacbf9e62d5"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
