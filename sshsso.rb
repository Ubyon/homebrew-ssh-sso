class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "0b691189b358e8a583cdce4376aca67d71f43f878f7daef923d55200207cd717"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar' => 'ssh-sso-helper'
    bin.install 'proxytunnel'
  end
end