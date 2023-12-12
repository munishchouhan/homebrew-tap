# Generated with JReleaser 1.9.0 at 2023-12-12T16:25:49.902950196Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "ce23977e56b8e14a890d993bfba6a642eef400e7d8eb218aadddd28eb67b226d"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "a31248098f83998dca84088014c9914ba85ecb8f779941e4ecd81c3c6e9e6fda"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "299898067063c38646ecffa43afd4548386ea817042a0e45568042c026772126"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "299898067063c38646ecffa43afd4548386ea817042a0e45568042c026772126"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
