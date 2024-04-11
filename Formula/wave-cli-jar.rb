# Generated with JReleaser 1.11.0 at 2024-04-11T12:59:51.885991123Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.3.2/wave-1.3.2.jar", :using => :nounzip
  version "1.3.2"
  sha256 "e56fbdaa80c0910ba11baac23a7bca9d5a18e1d7ccb377033028dcc02bb88345"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.3.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.3.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.3.2", output
  end
end
