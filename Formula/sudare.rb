class Sudare < Formula
  desc "Manage Procfile-based applications with terminal multiplexer."
  homepage "https://github.com/atty303/sudare"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atty303/sudare/releases/download/v0.2.0/sudare-aarch64-apple-darwin.tar.gz"
      sha256 "24aa121603fe56df93ededa5a15eaf7898f9bf121f86f8caeda4e149474ffbb7"

      def install
        bin.install "sudare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.2.0/sudare-x86_64-apple-darwin.tar.gz"
      sha256 "bbaf2b3b2303a7a1faecbd5e78ecf64540b89c27e01108db909dbe90949a4552"

      def install
        bin.install "sudare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.2.0/sudare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ffc95ffd05566cd7ee65af7f0575ba03b179da022745f4c7729d6f4c1ad93e3"

      def install
        bin.install "sudare"
      end
    end
  end
end
