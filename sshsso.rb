class Sshsso < Formula
  desc "Sshsso"
  homepage "https://github.com/Ubyon/ssh-sso"
  url "https://ubyon-login.s3.us-east-2.amazonaws.com/test/macos/latest/v0.2.8.tar.gz"
  version "0.2.8"
  sha256 "d54ac3a2313b7a19575afd1f3aa629bb7ffb57274f8f4e63e0a9353ecbba448b"
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
    5: 
      a: Run ubyonlogin (To obtain valid token using public native oidc web client - pkce supported )
                                  OR
      b: Run ubyonlogin --oidc=remote (To obtain valid token using private native oidc web client)
    6: ssh ubuntu@server.
  EOS
  end
end