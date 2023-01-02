class Sudare < Formula
  desc "Manage Procfile-based applications with terminal multiplexer."
  homepage "https://github.com/atty303/sudare"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atty303/sudare/releases/download/v0.1.4/sudare-aarch64-apple-darwin.tar.gz"
      sha256 "99030e011102ab76e3773cc6058c0478b4aa496bf20c495bee067b9938583230"

      def install
        bin.install "sudare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.4/sudare-x86_64-apple-darwin.tar.gz"
      sha256 "60409c91db9dac3ecc8318c6e0b4d49f390e6a22b8ef75d7fb256023c2d42e84"

      def install
        bin.install "sudare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.4/sudare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c6e72e314a1f46e09dfe08f68038252ad9b5420f5ee5bb466695ba35991eab0"

      def install
        bin.install "sudare"
      end
    end
  end
end
