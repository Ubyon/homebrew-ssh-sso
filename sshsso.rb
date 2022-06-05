class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "193ba47c93d682ffdb1441e580398e348f63d18951f7f9c5e33c416f8f8ba1b6"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    system "./configure.sh"
    bin.install 'proxytunnel'
  end

end