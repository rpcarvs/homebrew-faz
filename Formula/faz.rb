class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.2/faz_0.8.2_darwin_arm64.tar.gz"
      sha256 "f897c86766970dc86dbe65bfd39c2d79d91b8ca09eac6c2936f7d34eb7897aef"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.2/faz_0.8.2_darwin_amd64.tar.gz"
      sha256 "e7d290b1756a02e42a94c34360c5fd5ed734b127d8615620b22bff3cf2892dc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.2/faz_0.8.2_linux_arm64.tar.gz"
      sha256 "055153a0f58c1794abf67954aba3fd8160436501ae4762cb792ef64ebbd22929"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.8.2/faz_0.8.2_linux_amd64.tar.gz"
      sha256 "d69555dbc49a50dc0da410723ad649beb97583f00bbd21faf42899b411c218ac"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
