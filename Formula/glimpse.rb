class Glimpse < Formula
  desc "Scan folder for checkout git branch"
  homepage "https://github.com/ckissmann/glimpse"
  url "https://github.com/ckissmann/glimpse/archive/refs/tags/.tar.gz"
  sha256 "172dbbf468f2d83896081a22c4d65964cd0fa3dfda7926bfbd6da8b7d4d91d75"

   on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ckissmann/glimpse/archive/refs/tags/.tar.gz"
      sha256 "172dbbf468f2d83896081a22c4d65964cd0fa3dfda7926bfbd6da8b7d4d91d75"
    else
      url "https://github.com/ckissmann/glimpse/archive/refs/tags/.tar.gz"
      sha256 "172dbbf468f2d83896081a22c4d65964cd0fa3dfda7926bfbd6da8b7d4d91d75"
    end
  end

  def install
    bin.install "glimpse-1.0.0-macos-arm" => "glimpse" if Hardware::CPU.arm?
    bin.install "glimpse-1.0.0-macos-intel" => "glimpse" unless Hardware::CPU.arm?
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
