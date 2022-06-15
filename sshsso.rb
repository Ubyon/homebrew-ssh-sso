class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://ubyon-login.s3.us-east-2.amazonaws.com/test/macos/latest/v0.2.6.tar.gz"
  version "0.2.6"
  sha256 "d21c658e9ec43a0f733957a3fb98af94226714109d8fea4432351090710a6e78"
  license "Ubyon Inc"
  depends_on "openssl"
  def install
    bin.install 'proxytunnel'
    libexec.install Dir['*']
    bin.write_jar_script libexec/'ubyonlogin.jar', 'ubyonlogin'
  end

  def caveats; <<~EOS
    ubyonlogin uses "ssh configuration" to support SSO using ssh.
    1: export SSH_CONFIG_DIR=<SSH Configuration Directory of the user>. Make sure if has config file present
    2: export PROXY_URL=<Proxy URL>. Proxy/Edge url is the endpoint protecting resources using authentication/authorization.
    3: ubyonlogin configuration file is stored at "/usr/local/Cellar/sshsso/<version>/libexec/application.yaml". Make sure server domains are appropriately defined.
    4: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/<version>/libexec/application.yaml
    5: Run ubyonlogin (To obtain valid token)
    6: ssh ubuntu@server.
  EOS
  end
end