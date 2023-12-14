# Generated with JReleaser 1.9.0 at 2023-12-14T14:51:37.848382381Z
class Wave < Formula
    desc "Wave CLI"
    homepage "https://github.com/seqeralabs/wave-cli"
    version "1.1.0"
    license "MPL-2.0"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
        sha256 "d6959a491c0102aec9558a2eb865241328491e8a2d24c402289e1653a95b9ae9"

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
        sha256 "d6959a491c0102aec9558a2eb865241328491e8a2d24c402289e1653a95b9ae9"

        def install
            bin.install "wave" => "wave"
        end

        test do
            output = shell_output("#{bin}/wave --version")
            assert_match "1.1.0", output
        end
    end
end
