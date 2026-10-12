class Faz < Formula
  desc "Local task tracker for agent workflows"
  homepage "https://github.com/rpcarvs/faz"
  license "MIT"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.1/faz_0.12.1_darwin_arm64.tar.gz"
      sha256 "0edd698c8e59579a33c7d01e78ea25082776bfa8400f3c1afa84c6c3d478ec1b"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.1/faz_0.12.1_darwin_amd64.tar.gz"
      sha256 "d3b89a64decb911aa063ab27e75948ca28facf4d4b084ffa807fa0458269acea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.1/faz_0.12.1_linux_arm64.tar.gz"
      sha256 "facfe357410ee40065cbf1bbf488f977e7d589834b7093f1de234267f428efb2"
    else
      url "https://github.com/rpcarvs/faz/releases/download/v0.12.1/faz_0.12.1_linux_amd64.tar.gz"
      sha256 "dd405de2db220e21421a091c78c5e6287545ee818d521b08103069886342b053"
    end
  end

  def install
    bin.install "faz"
  end

  test do
    system "#{bin}/faz", "-v"
  end
end
