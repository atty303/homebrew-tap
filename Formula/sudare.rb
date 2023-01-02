class Sudare < Formula
  desc "Manage Procfile-based applications with terminal multiplexer."
  homepage "https://github.com/atty303/sudare"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atty303/sudare/releases/download/v0.1.3/sudare-aarch64-apple-darwin.tar.gz"
      sha256 "373893a56fa611bd11e8c92d373a08e8502b9babe74e38f8a9fb1f52ad610337"

      def install
        bin.install "sudare"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.3/sudare-x86_64-apple-darwin.tar.gz"
      sha256 "41b533468c7151300c67002b414bd848bc30d471898ae05ad2b14761cedefae7"

      def install
        bin.install "sudare"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/atty303/sudare/releases/download/v0.1.3/sudare-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "340239f89be2afdd825ef8b63c6a4a7cbc576fa107a8e540cf5f09fe5d60a8a1"

      def install
        bin.install "sudare"
      end
    end
  end
end
