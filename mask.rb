require "formula"

class Mask < Formula
  desc "A CLI task runner defined by a simple markdown file"
  homepage "https://github.com/jakedeichert/mask"
  url "https://crates.io/crates/mask"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "mask", "--root", prefix, "--path", "."
  end
end
