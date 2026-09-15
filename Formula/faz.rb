class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.1/faz_0.8.1_darwin_arm64.tar.gz"
      sha256 "ad5812d9d82d00c0ccb9859dd40bfc8cbfa4761866ea197f30d63d873d0d8292"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.1/faz_0.8.1_darwin_amd64.tar.gz"
      sha256 "919ef44ffee305f9ba439bd5779712bd4e012b72015f6d1b3f70fddee0eb78b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.1/faz_0.8.1_linux_arm64.tar.gz"
      sha256 "4510ab8dc47b446450cbdb78d31fb62c5eb0a89d8880cf7bfecd85141827bd82"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.1/faz_0.8.1_linux_amd64.tar.gz"
      sha256 "9f7d63a5c16302d477bdeb186a3f060b9e41290499905b69db1b52871b65adf3"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
