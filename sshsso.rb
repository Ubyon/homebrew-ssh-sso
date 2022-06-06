class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "8d16460c1639f79e099b9954b2fa8aed8b4da8bb6e0bb2ed33eef7313bc1fd3d"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ssh-sso-helper.jar', 'ssh-sso-helper'
    system "mkdir", "-p", "/tmp/ubyon"
    system "cp", libexec/'helloworld.sh', "/tmp/ubyon"
  end
  def post_install
    system "/bin/sh", "/tmp/ubyon/helloworld.sh"
  end

  def caveats; <<~EOS
    ssh-sso-helper uses "ssh configuration" to support SSO using ssh.
    1: Create configuration file mkdir ~/.ssh/config (If Not Present)
    2: Create ubyon ssh configuration file mkdir ~/.ssh/usc/config
    3: Update  ~/.ssh/config, echo 'Include usc/config' >> ~/.ssh/config
    4: ssh-sso-helper configuration file is stored at "/usr/local/Cellar/sshsso/<version>/libexec/application.yaml"
    5: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/<version>/libexec/application.yaml
    
    Once everything is configured, typical use-case
    1: ssh ubuntu@10.182.0.15 -p 9023
  EOS
  end
end