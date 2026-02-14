class Glimpse < Formula
  desc "Deine App Beschreibung"
  homepage "https://github.com/ckissmann/glimpse"
  url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.17.tar.gz"
  sha256 "aeaef4fbf44119ebe95df7860531d720c5cc01f9c33cc2b46f697095dcf9b596"
  license "MIT"
  
  depends_on "rust" => :build

  def install
    # Build für macOS mit optimierten Flags
    system "cargo", "build", "--release", "--locked"
    
    # Installiere die Binary
    bin.install "target/release/glimpse"
    
    # Falls du Libraries hast, installiere sie auch
    # lib.install "target/release/libglimpse.dylib" if File.exist?("target/release/libglimpse.dylib")
    # lib.install "target/release/libglimpse.a" if File.exist?("target/release/libglimpse.a")
  end

  test do
    system "#{bin}/glimpse", "--version"
  end
end
