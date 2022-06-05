class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "6f6b9d005326aadcc7d7f5352098928ebbf0bb958a9915d61b1cd0a8e57b7d00"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar'
    bin.install 'proxytunnel'
  end
end