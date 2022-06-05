class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "598419e362f4e961d18c2ee83a5f4410503b0d79305c31c6f033bfe59d987dab"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run.sh'
    bin.install 'ssh-sso-helper.jar' => "ssh-sso-helper"
    bin.install 'proxytunnel'
  end
end