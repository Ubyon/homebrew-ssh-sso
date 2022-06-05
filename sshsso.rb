class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run.sh'
    bin.install 'ssh-sso-helper.jar' => "ssh-sso-helper"
    bin.install 'proxytunnel'
  end
end