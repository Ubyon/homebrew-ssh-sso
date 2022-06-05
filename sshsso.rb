class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "539df0defb8df511d27347bd345aea561c63eaebc781f2fd0bd1dc2f45989462"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run.sh'
    bin.install 'ssh-sso-helper.jar' => "ssh-sso-helper"
    bin.install 'proxytunnel'
  end
end