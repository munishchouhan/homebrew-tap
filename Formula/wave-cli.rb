# Generated with JReleaser 1.9.0 at 2023-12-18T12:23:35.596681968Z
class WaveCli < Formula
    desc "Wave CLI"
    homepage "https://github.com/seqeralabs/wave-cli"
    version "1.1.0"
    license "MPL-2.0"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
        sha256 "e7d57ff2b1bda8da314842cdd7285dceb059c91d63daccd7e6e584507af3b2d3"

        def install
            bin.install "wave" => "wave"
        end
    end

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
        sha256 "e7d57ff2b1bda8da314842cdd7285dceb059c91d63daccd7e6e584507af3b2d3"

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
