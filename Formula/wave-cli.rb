# Generated with JReleaser 1.9.0 at 2023-12-19T13:46:03.475806557Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64.zip"
    sha256 "c9ccdd2da04d729311cf1941a47c5aeb2796046e3fd08a76935b6861c62a4171"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "bd1162638ff6a70e1bba35dd7ac41bedd84d8db865a9c0ebf1af519e4347ddd2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "bd1162638ff6a70e1bba35dd7ac41bedd84d8db865a9c0ebf1af519e4347ddd2"
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
