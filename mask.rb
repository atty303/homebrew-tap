require "formula"

class Mask < Formula
  desc "A CLI task runner defined by a simple markdown file"
  homepage "https://github.com/jakedeichert/mask"
  url "file:///dev/null"
  version "0.4.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "mask", "--root", prefix, "--version", version
  end
end
