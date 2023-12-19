# Generated with JReleaser 1.9.0 at 2023-12-19T15:36:34.203931483Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64"
    sha256 "82778996fc0de68c5d39333fd8ba49b9a762eaf9bb052a40647a13d81e2dd472"

    def install
      bin.install "wave-1.1.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "49b822af156398de588f0944fb7a3b1afd75a5ba13e853240f54dc00bde55185"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
