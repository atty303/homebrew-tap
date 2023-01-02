class Sudare < Formula
  desc "Manage Procfile-based applications with terminal multiplexer."
  homepage "https://github.com/atty303/sudare"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atty303/sudare/releases/download/v0.1.5/sudare-aarch64-apple-darwin.tar.gz"
      sha256 "e943f323f9bd0b863e10ead16e1057fbf4c143a4912b392eee79275ca38af44e"

      def install
        bin.install "sudare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.5/sudare-x86_64-apple-darwin.tar.gz"
      sha256 "61281a8652adaee417c0c600d605a973361f4161e9cc3c6e530067cf78b55ac6"

      def install
        bin.install "sudare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.5/sudare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f00f96eb4e1b549557079a55576d52a12bd82634d0f26c048c70376810652456"

      def install
        bin.install "sudare"
      end
    end
  end
end
