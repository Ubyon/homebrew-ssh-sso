class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "23a130e16907d20dc95fa3c0d399954a72f6fed385ba1b10ca4d390991db4021"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ssh-sso-helper.jar', 'ssh-sso-helper'
    bin.write_jar_script libexec/'proxytunnel', 'proxytunnel'
    bin.write_jar_script libexec/'java-app-run', 'java-app-run'
  end
end