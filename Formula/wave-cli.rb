# Generated with JReleaser 1.9.0 at 2023-12-19T15:07:30.594852351Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
    sha256 "1eaeb78a82f0f476f0acbce49a6ad7a5bd3cb3a7c2c98e57fc9abf98e5f94ace"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "5ed1efec551d9c0cba9fa1496b26b4cb39da0ed3fa8e1336526e306b6a169e93"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
