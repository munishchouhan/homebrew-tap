# Generated with JReleaser 1.13.1 at 2024-07-10T13:27:01.596325881Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.4.3/wave-1.4.3.jar", :using => :nounzip
  version "1.4.3"
  sha256 "11081928b5181184b1767adf49f72fca4162f4fddf219229f9663718a5ebcb84"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "wave-1.4.3.jar"

    bin.mkpath
    File.open("#{bin}/wave-cli-jar", "w") do |f|
      f.write <<~EOS
        #!/bin/bash
        export JAVA_HOME="#{Language::Java.overridable_java_home_env(nil)[:JAVA_HOME]}"
        exec "${JAVA_HOME}/bin/java" -jar #{libexec}/wave-1.4.3.jar "$@"
      EOS
    end
  end

  test do
    output = shell_output("#{bin}/wave-cli-jar --version")
    assert_match "1.4.3", output
  end
end
