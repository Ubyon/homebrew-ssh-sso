class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "777abcb860a1186bfdd67b01f27f8f32fb3d9651188273a71fa3a5692defb926"
  license "Ubyon Inc"
  depends_on "openssl"
  def install



    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar' => 'ssh-sso-helper'
    bin.install 'proxytunnel'
  end
end