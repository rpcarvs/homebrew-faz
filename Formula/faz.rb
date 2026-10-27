class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.12.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.3/faz_0.12.3_darwin_arm64.tar.gz"
      sha256 "bbeb8276dfc64418c1e5843ddae8c85e18df70dc3c30c061d8e138820814a76e"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.3/faz_0.12.3_darwin_amd64.tar.gz"
      sha256 "99aaaf2766fadac1defc83763ea279dd0a534ccd90995dedaa8bfa5e0bc1e3b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.3/faz_0.12.3_linux_arm64.tar.gz"
      sha256 "0e818a89cafcaae6cac8dfd969a106a0c3208bf435816a93e09def688d2f4445"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.3/faz_0.12.3_linux_amd64.tar.gz"
      sha256 "88a3955c011687344048029cffd853fb121ed76b02be80958a9d3aac203a3c93"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
