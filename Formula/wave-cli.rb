# Homebrew Formula for Wave-cli

class WaveCli < Formula
  desc "cli for wave"
  homepage "https://seqera.io/wave"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.0/wave-1.1.0-macos-x86_64.zip"

  def install
    unzip "wave-1.1.0-macos-x86_64.zip"
    mv "wave-1.1.0-macos-x86_64", "wave"
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
