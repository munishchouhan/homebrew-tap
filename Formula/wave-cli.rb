# Generated with JReleaser 1.9.0 at 2023-12-14T15:48:36.515806153Z
class WaveCli < Formula
    desc "Wave CLI"
    homepage "https://github.com/seqeralabs/wave-cli"
    version "1.1.0"
    license "MPL-2.0"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
        sha256 "d0249438a18e3bfdd27bd65e1875f1180f0c9910581e2c44bce7a0a0dc694bfd"

        def install
            bin.install "wave" => "wave"
        end
    end

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
        sha256 "d0249438a18e3bfdd27bd65e1875f1180f0c9910581e2c44bce7a0a0dc694bfd"

        def install
            bin.install "wave" => "wave"
        end
    end

    test do
        output = shell_output("#{bin}/wave --version")
        assert_match "1.1.0", output
    end

    def caveats
        <<~EOS
            wave has been installed!
            To run it, type:
            wave --help
        EOS
    end
end
