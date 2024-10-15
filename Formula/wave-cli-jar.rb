# Generated with JReleaser 1.14.0 at 2024-10-15T02:35:32.112793259Z

class WaveCliJar < Formula
  desc "Wave CLI"
  homepage "https://github.com/seqeralabs/wave-cli"
  url "https://github.com/munishchouhan/wave-cli/releases/download/v1.5.0-rc.4/wave-1.5.0-rc.4.jar", :using => :nounzip
  version "1.5.0-rc.4"
  sha256 "d8f2587990539887959bfc0f2f788f3d6a41e8115640f5258293ffd978ff1a40"
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
