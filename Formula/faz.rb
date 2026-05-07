class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.3/faz_0.6.3_darwin_arm64.tar.gz"
      sha256 "671cbc20ccb979b15acc1790310b4f204709a56028b331b5a905607a3c45a33c"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.3/faz_0.6.3_darwin_amd64.tar.gz"
      sha256 "dc8fd435adb836636c2dbb900c9bb9ee216e35d7519513526af935bf7d0fa21d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.3/faz_0.6.3_linux_arm64.tar.gz"
      sha256 "e03f6efd5b2d6f8f8d7e78e2471363cce9e805629b28ef6c43fcc31efc65e197"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.6.3/faz_0.6.3_linux_amd64.tar.gz"
      sha256 "95f03a66a41c93e84832628662a0007a081be17eacdd7e17fe3f05c43f78528c"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
