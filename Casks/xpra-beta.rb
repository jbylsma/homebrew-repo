cask "xpra-beta" do
  version :latest
  sha256 :no_check

  url "https://www.xpra.org/beta/MacOS/Xpra-x86_64.pkg"
  name "Xpra"
  homepage "https://www.xpra.org/"

  conflicts_with cask: [
    "xpra"
  ]

  pkg "Xpra-x86_64.pkg"

  uninstall pkgutil:  "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end
