class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.1.5.tar.gz"
  version "0.1.5"
  sha256 "0208c3c7355ede0393baa6e1c41005f21e4105dd704d804493f2f04c07470261"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ssh-sso-helper.jar', 'ssh-sso-helper'
  end

  def caveats; <<~EOS
    ssh-sso-helper uses "ssh configuration" to support SSO using ssh.
    1: export SSH_HOME=/Users/chintanvora/.ssh
    2: ssh-sso-helper configuration file is stored at "/usr/local/Cellar/sshsso/<version>/libexec/application.yaml"
    2: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/<version>/libexec/application.yaml    
    3: ssh-sso-helper (To create init configuration) 
    4: ssh ubuntu@10.182.0.15
  EOS
  end
end