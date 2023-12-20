# Generated with JReleaser 1.9.0 at 2023-12-20T11:06:34.691581443Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2-linux-x86_64"
    sha256 "4ef485f2f9b3e73f3cac6a8fdedad07f58012598cb70f218628cadbf8c6fb221"

    def install
      bin.install "wave-1.1.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-arm64"
    sha256 "e96ba86e5df8ca4ccb05f32470b579d8357ed1d97e9ca0087b17f56a9633fbb7"

    def install
      bin.install "wave-1.1.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-x86_64"
    sha256 "844df5d1aec402e706967aaecb02d66b7a9ab5e10dbb49d30cd8bbbdd1a92795"

    def install
      bin.install "wave-1.1.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.2", output
  end
end
