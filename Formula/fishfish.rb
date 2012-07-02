require 'formula'

class Fishfish < Formula
  homepage 'http://ridiculousfish.com/shell/index.html'
  head 'https://github.com/fish-shell/fish-shell.git'
  url 'https://github.com/fish-shell/fish-shell/zipball/master'
  md5 'a8a222e171f7ea6bf2c67a1770141c6c'
  version '1.23.1'

  depends_on 'doxygen' => :build
  depends_on 'autoconf' => :build

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}", "--without-xsel"
    system "make install"
  end

end
