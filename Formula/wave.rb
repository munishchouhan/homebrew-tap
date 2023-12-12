# Generated with JReleaser 1.9.0 at 2023-12-12T15:28:50.19301947Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-arm64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "fa0c181ff4757fb235e33954dd4d68cad703542100f1ae5d8164c668052341a1"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
