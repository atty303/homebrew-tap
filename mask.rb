require "formula"

class Mask < Formula
  desc "A CLI task runner defined by a simple markdown file"
  homepage "https://github.com/jakedeichert/mask"
  url "https://github.com/atty303/mask/archive/v0.3.1-p1.tar.gz"
  sha256 "fedec03865b9c12f15540bb10935e7b664c4fa131e8d64ccadcec7512a5742c5"
  version "0.3.1-p1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "mask", "--root", prefix, "--path", "."
  end
end
