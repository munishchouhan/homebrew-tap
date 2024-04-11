# Generated with JReleaser 1.11.0 at 2024-04-11T12:59:51.885991123Z

class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.3.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-linux-x86_64", :using => :nounzip
    sha256 "8de350da2e7f999602663b1581c8cc910205ad685f809c71773cbb4a72f2f377"

    def install
      bin.install "wave-1.3.2-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-macos-arm64", :using => :nounzip
    sha256 "36a07f73095b36268789cbcbbc06ade8622d0bf0b75e26eb5d2a69d56120045f"

    def install
      bin.install "wave-1.3.2-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2-macos-x86_64", :using => :nounzip
    sha256 "f16fff491022a5f7f4f525519fd5ae3c5ce3ff8af7300a6674bad252c9c7c94c"

    def install
      bin.install "wave-1.3.2-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.3.2", output
  end
end
