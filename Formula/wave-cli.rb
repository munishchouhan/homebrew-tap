# Generated with JReleaser 1.9.0 at 2023-12-19T13:52:24.734605075Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64.zip"
    sha256 "9a26cf60a24fc93a742f501ab8f5c3fb1c2f8b45ec5a5f0890e90ce6e95e4083"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "589cf211895d45cec6695dfcb03c2cd2ba21b31b3b27db2c0526b83803491f9b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "589cf211895d45cec6695dfcb03c2cd2ba21b31b3b27db2c0526b83803491f9b"
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
