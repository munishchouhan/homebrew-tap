# Generated with JReleaser 1.9.0 at 2023-12-19T18:12:28.178567838Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64"
    sha256 "3f4aded7b2d515aa705d3dc558e70373beb3363e9a43bc9191d7336f18b49596"

    def install
      bin.install "wave-1.1.0-linux-x86_64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64"
    sha256 "680280d26ce045843f4c1351f1fdbf12d76792f45cd816f8479655ba49404432"

    def install
      bin.install "wave-1.1.0-macos-arm64" => "wave"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64"
    sha256 "fa56ed90a4d9ac77aa1a3c77406892a317e99cad6acd2d64bca66869c9e3bb03"

    def install
      bin.install "wave-1.1.0-macos-x86_64" => "wave"
    end
  end


  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
