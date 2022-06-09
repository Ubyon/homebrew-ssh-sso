class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "ea4d6ae568eec1f00ff576d275af1b420bd4d06eab340a27fffda81570ceafe7"
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
    4: Run ubyonlogin (To create for obtaining valid token)
    5: ssh ubuntu@server.
  EOS
  end
end