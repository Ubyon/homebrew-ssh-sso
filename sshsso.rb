class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "c4ef164d6b74150b7c1c5317242ea6d7cd921f2c42d885f90c1920ab55c9943e"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'ssh-sso-helper.jar' => "ssh-sso-helper"
    bin.install 'proxytunnel'
  end
end