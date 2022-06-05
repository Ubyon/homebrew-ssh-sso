class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "8a90bef2530b1e8d51d9ba21f467d3db1e37fe34f35521f82b331eb3ad9d19b5"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar' => "ssh-sso-helper"
    bin.install 'proxytunnel'
  end
end