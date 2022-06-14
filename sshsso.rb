class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://ubyon-login.s3.us-east-2.amazonaws.com/test/macos/latest/v0.2.4.tar.gz"
  version "0.2.4"
  sha256 "cd871fedb61936cb74c4d0bcc32f6934b95d16dee2fa70b41d7f31dc9f0b3f36"
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
    4: Run ubyonlogin (To obtain valid token)
    5: ssh ubuntu@server.
  EOS
  end
end