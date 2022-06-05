class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "ce189a1a32a87503f09145c85082bc1b39a24c4d0ac207c9387558924516220c"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'java-app-run'
    bin.install 'ssh-sso-helper.jar' => 'ssh-sso-helper'
    bin.install 'proxytunnel'
  end
end