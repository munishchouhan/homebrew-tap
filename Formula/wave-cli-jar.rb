# Generated with JReleaser 1.14.0 at 2024-10-15T03:15:50.222568849Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4.jar", :using => :nounzip
  version "1.5.0-rc.4"
  sha256 "e1d4cbb44b1c050701ffe5c9c9e3389d572c1a1a55afaa914c4a0366956d09d4"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.5.0-rc.4.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.5.0-rc.4.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.5.0-rc.4", output
  end
end
