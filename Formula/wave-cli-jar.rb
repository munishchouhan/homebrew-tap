# Generated with JReleaser 1.9.0 at 2023-12-20T11:06:34.691581443Z
class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.1.2/wave-1.1.2.jar", :using => :nounzip
  version "1.1.2"
  sha256 "0cf1c75829f8920ea042d4e2451b1e6e084edbe9b42fd6f8b18686f8c1ab8f2b"
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
