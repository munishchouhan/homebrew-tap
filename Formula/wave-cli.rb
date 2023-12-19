# Generated with JReleaser 1.9.0 at 2023-12-19T12:02:54.093034363Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64.zip"
    sha256 "eb2b7e53a20405d35c395da673805a86332fa4119cc6094244ff67ab61190cb7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "d8231a56279d924c8be759f2221adb129193edd9eb8f1d021f62d463364ecf20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "d8231a56279d924c8be759f2221adb129193edd9eb8f1d021f62d463364ecf20"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wave-cli" => "wave-cli"
  end

  test do
    output = shell_output("#{bin}/wave-cli --version")
    assert_match "1.1.0", output
  end
end
