# Generated with JReleaser 1.9.0 at 2023-12-19T13:26:02.066897113Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64.zip"
    sha256 "3b6de906e31d9182218d36c2bff6b18d67b8d08eabb97a5e71304909b1a3c227"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "051ec239826acfec8c3f6e50e2d5282bfc8f648073f0ae5c96c723c1c40a0f09"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "051ec239826acfec8c3f6e50e2d5282bfc8f648073f0ae5c96c723c1c40a0f09"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
