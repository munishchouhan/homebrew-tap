# Generated with JReleaser 1.9.0 at 2023-12-12T17:48:54.232290869Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "58475ced347ce3519e8879bc7d3ac1a3d69ed4090f08835093ea39dafefa075d"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "ad70e08e8cbd847f8aaa95035632b4353d85086735a67e308fd2585580d14e34"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "ad70e08e8cbd847f8aaa95035632b4353d85086735a67e308fd2585580d14e34"

    def install
      bin.install "wave" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
