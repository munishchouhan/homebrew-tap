# Generated with JReleaser 1.9.0 at 2023-12-19T19:02:51.863148037Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-arm64"
    sha256 "5cb1e7de3fcfe4595fd21908c78cb398cf3f8b2e2a5f7c4118bd9d5c5992ae9a"

    def install
      bin.install "wave-1.1.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2-macos-x86_64"
    sha256 "e62f6a100e56f1f4a7c1b0cf3e87b60207ba0218998f4b9dbdb3c3cd6672ca5d"

    def install
      bin.install "wave-1.1.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.2", output
  end
end
