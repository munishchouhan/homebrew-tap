# Generated with JReleaser 1.9.0 at 2023-12-12T16:43:22.219482293Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "7d9fa4ca3abb0a09518b400ac3c484c84dc86f1fa8f38f220195fc4defe16519"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "6e3b70a8649316139c7149e850d5401cbd44e877894541a8074ad6c331e5b7a5"

    def install
      bin.install "wave-1.1.0-macos-x86_64.zip" => "wave"
    end
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "42cecd2f1a3b08231ad8c8052e2573439b4c644ac7555997d38a1a3907c4bd00"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
