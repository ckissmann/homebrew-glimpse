class Glimpse < Formula
  desc "Scan folder for checkout git branch"
  homepage "https://github.com/ckissmann/glimpse"
  url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.18.tar.gz"
  sha256 "dd70b18ac3438a11193ee1a302bc7a419b2d1804ce5fb843d813a7262b18555c"

   on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.18.tar.gz"
      sha256 "dd70b18ac3438a11193ee1a302bc7a419b2d1804ce5fb843d813a7262b18555c"
    else
      url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.18.tar.gz"
      sha256 "dd70b18ac3438a11193ee1a302bc7a419b2d1804ce5fb843d813a7262b18555c"
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
