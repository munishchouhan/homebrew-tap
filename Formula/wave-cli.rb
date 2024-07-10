# Generated with JReleaser 1.13.1 at 2024-07-10T13:27:01.596325881Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.4.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.3/wave-1.4.3-linux-x86_64", :using => :nounzip
    sha256 "f53f75e0f96fd426626665f1537abc31f28b69c3d4c5b7160cc795938ee3fa37"

    def install
      bin.install "wave-1.4.3-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.3/wave-1.4.3-macos-x86_64", :using => :nounzip
    sha256 "ed815c07557ff2106faea387174679d09577e2f22e21d8d351e9b6cc6a68afea"

    def install
      bin.install "wave-1.4.3-macos-x86_64" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.3/wave-1.4.3-macos-x86_64", :using => :nounzip
    sha256 "ed815c07557ff2106faea387174679d09577e2f22e21d8d351e9b6cc6a68afea"

    def install
      bin.install "wave-1.4.3-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.4.3", output
  end
end
