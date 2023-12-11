# Generated with JReleaser 1.9.0 at 2023-12-08T14:05:03.56393612Z
class WaveCli < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip", :using => :nounzip
  version "1.1.0"
  sha256 "0facd07889cf76d1596669e4b3cb0f92b359faacc0490bf377fa78182131ebb7"
  license "MPL-2.0"


   def install
    unzip "wave-{{projectEffectiveVersion}}-macos-x86_64.zip"
    mv "wave-{{projectEffectiveVersion}}-macos-x86_64", "wave"
    bin.install "wave"
  end

  test do
    system "#{bin}/wave", "--version"
  end

  def caveats
    <<~EOS
      wave has been installed!
      To run it, type:
      wave
    EOS
  end

end
