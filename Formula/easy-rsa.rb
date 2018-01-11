class EasyRsa < Formula
  desc "Homebrew formula for `easy-rsa`"
  homepage "https://github.com/OpenVPN/easy-rsa"
  head "https://github.com/OpenVPN/easy-rsa.git"

  depends_on "openssl"

  def install
    share.install %w(
      easyrsa3/easyrsa
      easyrsa3/openssl-1.0.cnf
      easyrsa3/vars.example
    )

    doc.install "ChangeLog"
    doc.install "COPYING.md"
    doc.install "KNOWN_ISSUES"
    doc.install "README.md"
    doc.install "README.quickstart.md"

    bin.install_symlink share/"easyrsa" => "easyrsa"
  end
end
