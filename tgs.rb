class Tgs < Formula
  desc "Thought-Guided Software development workflow CLI"
  homepage "https://github.com/akelv/tgsflow"
  license :cannot_represent

  head "https://github.com/akelv/tgsflow.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=HEAD"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"tgs"), "./src"
  end

  test do
    system "#{bin}/tgs", "--version"
  end
end
