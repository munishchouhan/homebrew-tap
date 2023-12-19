# Generated with JReleaser 1.9.0 at 2023-12-19T14:54:54.730834796Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  version "1.1.0"
  license "MPL-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip"
    sha256 "b138f6c5126773319961e0de3c8a1e05e2f6c1ec7f956367dffff2f30c34fe39"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"
    sha256 "fb76618ab26c8a563f1a141b9b1c43b29d6d51067a5270a91eb827cb86403df5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
