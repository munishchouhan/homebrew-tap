# Generated with JReleaser 1.9.0 at 2023-12-19T15:15:42.835371555Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64"
    sha256 "d614c209460572c82b84cb1b5e6dae829745b35964ceffa8e5039cbedc59610e"

    def install
      bin.install "wave-1.1.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "714d18746f5b21841cb5b7866f76c222f1ffe8e27e9218248e0a4356d52754e2"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
