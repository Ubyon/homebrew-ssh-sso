class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.1.7.tar.gz"
  version "0.1.7"
  sha256 "ef48f61f270427c23efaa6643e3c290d1fb38be574e752738a78e84cb01a2f38"
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
    3: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/<version>/libexec/application.yaml    
    4: ssh-sso-helper (To create init configuration) 
    5: ssh ubuntu@10.182.0.15
  EOS
  end
end