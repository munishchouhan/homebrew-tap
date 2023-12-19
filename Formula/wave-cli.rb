# Generated with JReleaser 1.9.0 at 2023-12-19T10:49:52.52623865Z
class WaveCli < Formula
    desc "Wave CLI"
    homepage "https://github.com/seqeralabs/wave-cli"
    version "1.1.0"
    license "MPL-2.0"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-linux-x86_64.zip"
        sha256 "3328091b59c5dec50c3f5d5ab865f6055d2eae41b84fbe11019f7ad1169f89fb"

        def install
            bin.install "wave" => "wave"
        end
    end

    if OS.mac? && Hardware::CPU.intel?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
        sha256 "3328091b59c5dec50c3f5d5ab865f6055d2eae41b84fbe11019f7ad1169f89fb"

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
