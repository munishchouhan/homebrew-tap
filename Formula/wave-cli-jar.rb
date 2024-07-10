# Generated with JReleaser 1.13.1 at 2024-07-10T12:58:19.733834513Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.2/wave-1.4.2.jar", :using => :nounzip
  version "1.4.2"
  sha256 "6e245debfe06903d7f00bc9b904dc15c3979a2a5f4c52922047b1d79e101db14"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.4.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.4.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.4.2", output
  end
end
