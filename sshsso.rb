class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.5.tar.gz"
  version "0.0.5"
  sha256 "d754ece5483f39712deb64cefba98a9101bac081bf71766431bcd33d85c4fabb"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ssh-sso-helper.jar', 'ssh-sso-helper'
  end
end