class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.1/faz_0.11.1_darwin_arm64.tar.gz"
      sha256 "dd179d09649794bf381aafcd5760fd461a84c34664775fbfa0b91af927742a1e"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.1/faz_0.11.1_darwin_amd64.tar.gz"
      sha256 "f259e446924f89f656361ba93d1e3310766c81f56bd19757637823c9204a2239"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.1/faz_0.11.1_linux_arm64.tar.gz"
      sha256 "d0047da3ec246776ecf2fa3638b23d1e1738e82fbd38e0e99a0593a3f57873a2"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.11.1/faz_0.11.1_linux_amd64.tar.gz"
      sha256 "1b9338f696cd132f9121ffd183dff855a15e47b2836d0737e05137109b24d15f"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
