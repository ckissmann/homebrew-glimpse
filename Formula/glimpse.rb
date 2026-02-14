class Glimpse < Formula
  desc "Scan folder for checkout git branch"
  homepage "https://github.com/ckissmann/glimpse"
  url "https://github.com/ckissmann/glimpse/archive/refs/tags/v2026.2.14.17.tar.gz"
  sha256 "aeaef4fbf44119ebe95df7860531d720c5cc01f9c33cc2b46f697095dcf9b596"

   on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ckissmann/glimpse/releases/download/v2026.2.14.17/glimpse-1.0.0-macos-arm"
      sha256 "b5fdfa258eb9c30ecaa9cf2df2134ad55933c2970ba0bb32767fe8716270f495"
    else
      url "https://github.com/ckissmann/glimpse/releases/download/v2026.2.14.17/glimpse-1.0.0-macos-intel"
      sha256 "11d8808572f96de5426255ee0de8d28f8dd36e80c8029aa2b7a7ce30b0888629"
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
