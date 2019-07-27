require "formula"

class Mask < Formula
  desc "A CLI task runner defined by a simple markdown file"
  homepage "https://github.com/jakedeichert/mask"
  url "file:///dev/null"
  version "0.4.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "mask", "--root", prefix, "--version", version
  end
end
