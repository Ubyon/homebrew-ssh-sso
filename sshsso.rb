class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.0.5.tar.gz"
  version "0.0.5"
  sha256 "d754ece5483f39712deb64cefba98a9101bac081bf71766431bcd33d85c4fabb"
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
    5: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/0.0.5/libexec/application.yaml
    
    Once everything is configured, typical use-case
    1: ssh login (Helps you with SSO and updates ~/.ssh/usc/config accordingly)
    2: ssh ubuntu@10.182.0.15 -p 9023
  EOS
  end
end