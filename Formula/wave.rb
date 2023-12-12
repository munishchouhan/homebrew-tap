# Generated with JReleaser 1.9.0 at 2023-12-12T19:38:00.427703804Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
        sha256 "91743e75c5a42c95a318df00b029ecb3d468cc58cd4282f3b8702ffd7f1ea55a"

        def install
            bin.install "wave" => "wave"
        end

        test do
            output = shell_output("#{bin}/wave --version")
            assert_match "1.1.0", output
        end
    end

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
        sha256 "91743e75c5a42c95a318df00b029ecb3d468cc58cd4282f3b8702ffd7f1ea55a"

        def install
            bin.install "wave" => "wave"
        end

        test do
            output = shell_output("#{bin}/wave --version")
            assert_match "1.1.0", output
        end
    end


end
