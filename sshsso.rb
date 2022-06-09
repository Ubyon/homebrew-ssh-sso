class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://github.com/Ubyon/ssh-sso/archive/refs/tags/v0.1.9.tar.gz"
  version "0.1.9"
  sha256 "ebf2b47d615e4f6bb1ced42763f22b34a3c7ba4cd962c53ed3f5cf63a53f9e8a"
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
    3: export UBYON_LOGIN=false for Initial Configuration 
    4: ubyonlogin configuration file is stored at "/usr/local/Cellar/sshsso/<version>/libexec/application.yaml". Make sure server domains are appropriately defined.
    5: export SPRING_CONFIG_LOCATION=/usr/local/Cellar/sshsso/<version>/libexec/application.yaml     
    6: ubyonlogin (To create init configuration) 
    7: export UBYON_LOGIN=true for obtaining valid token.
    8: ssh ubuntu@server (Should trigger SSO and store identity) and help you get through.
  EOS
  end
end