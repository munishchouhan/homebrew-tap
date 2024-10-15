# Generated with JReleaser 1.14.0 at 2024-10-15T02:35:32.112793259Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.5.0-rc.4"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-linux-x86_64", :using => :nounzip
    sha256 "72b0958a8019415d903d47cd4bdacd2155445f4cf3157d7f6461ddaf5805669b"

    def install
      bin.install "wave-1.5.0-rc.4-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-macos-x86_64", :using => :nounzip
    sha256 "6002349d76ee412088e004733ae87052d821c4151084a06add4c497880718de6"

    def install
      bin.install "wave-1.5.0-rc.4-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4-macos-x86_64", :using => :nounzip
    sha256 "6002349d76ee412088e004733ae87052d821c4151084a06add4c497880718de6"

    def install
      bin.install "wave-1.5.0-rc.4-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.5.0-rc.4", output
  end
end
