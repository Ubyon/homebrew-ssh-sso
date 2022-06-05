class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "6d3c42abe4b6c2ca8ca46b0c4d00377b59b75cc6dd172f2f0ba13deed8cc446f"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar' => 'ssh-sso-helper'
    bin.install 'proxytunnel'
  end
end