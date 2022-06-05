class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "46d816e6224b8271f39cee4398776f2cf4b4fc2c6921fa28255cea5573725e02"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
  end

end