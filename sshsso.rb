class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/0.0.9.tar.gz"
  version "0.0.9"
  sha256 "624d2b556c9af1f97ee5a89e574c681373e35f09a652ee07a1fa73cc625a0f5a"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ssh-sso-helper.jar', 'ssh-sso-helper'
  end
  def caveats; <<~EOS
    ssh-sso-helper uses "ssh configuration" to support SSO using ssh.
    1: Create configuration file mkdir ~/.ssh/config (If Not Present)
    2: Create ubyon ssh configuration file mkdir ~/.ssh/usc/config
    3: Update  ~/.ssh/config, echo 'Include usc/config' >> ~/.ssh/config
    4: ssh-sso-helper configuration file is stored at "/usr/local/Cellar/sshsso/<version>/libexec/application.yaml"
    5: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/0.0.9/libexec/application.yaml
    
    Once everything is configured, typical use-case
    1: ssh login (Helps you with SSO and updates ~/.ssh/usc/config accordingly)
    2: ssh ubuntu@10.182.0.15 -p 9023
  EOS
  end
end