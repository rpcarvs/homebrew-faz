class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.2/faz_0.7.2_darwin_arm64.tar.gz"
      sha256 "0d88f349c469fead9148f1f5639d1f18d91be7b582f2fea1587392f7c608e7f4"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.2/faz_0.7.2_darwin_amd64.tar.gz"
      sha256 "d7442bf0d2d31c3a83944cdef744e50ecf0e759ad781d6bab17fb6eba63f95b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.2/faz_0.7.2_linux_arm64.tar.gz"
      sha256 "48a58bc35b0eb4365b68e190c5bc1a090d005787f14c42daf89b7e9407369b35"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.7.2/faz_0.7.2_linux_amd64.tar.gz"
      sha256 "ac18b80f11dbc657a93349341d724e0a80affad53d418570d62cf99618db1750"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
