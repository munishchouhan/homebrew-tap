# Generated with JReleaser 1.9.0 at 2023-12-19T19:02:51.863148037Z
class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2.jar", :using => :nounzip
  version "1.1.2"
  sha256 "929b9e49c26fae1dbfb6897142938dc91cf30ab2ac5e10f31ac9f59d71e36a9e"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.1.2.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.1.2.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.1.2", output
  end
end
