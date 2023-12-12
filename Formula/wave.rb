# Generated with JReleaser 1.9.0 at 2023-12-12T18:35:41.007737982Z
class Wave < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "c4b4ef3c564af089a19a79f785bb6e7248140edb64dbf37ecbba322afe44c006"
  license "MPL-2.0"


  def install
    bin.install "wave" => "wave"
  end

  test do
    output = shell_output("#{bin}/wave --version")
    assert_match "1.1.0", output
  end
end
