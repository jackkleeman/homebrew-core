class Restate < Formula
  desc "Restate CLI"
  homepage "https://docs.restate.dev"
  url "https://github.com/restatedev/restate/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "c901efb7a844f9e89944384e3418c20a4c6bb6ded9b6964698f8a53a53b768bd"
  license "BSL-1.1"
  head "https://github.com/restatedev/restate.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "cli")
  end

  test do
    shell_output("#{bin}/restate -V")
  end
end
