class Glimpse < Formula
  desc "Deine App Beschreibung"
  homepage "https://github.com/ckissmann/glimpse"
  url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.17.tar.gz"
  sha256 "aeaef4fbf44119ebe95df7860531d720c5cc01f9c33cc2b46f697095dcf9b596"
  license "MIT"
  
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end