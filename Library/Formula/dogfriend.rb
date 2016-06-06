class Dogfriend < Formula
  desc "A command line utility for testing Chef changes"
  homepage "https://github.com/DataDog/dogfriend"
  version '0.1.4'
  url "http://devops-public.s3.amazonaws.com/dogfriend-#{ version }-darwin-x86_64.zip"
  sha256 "c4fd3ce0f296d94f811cf8b3388a4f2d126a4466a10ecc85ed22ef7858ce28ea"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix+"dogfriend-#{ version }-darwin-x86_64" => "dogfriend"
  end

  test do
    system "#{bin}/dogfriend readme"
  end
end
