require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/"
  version "v2.9.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_arm64.zip"
      sha256 "f76c1ad95d8295ccddc38ae90f73a7b5d3c36dd728e433221e425926b3d4a56f"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_amd64.zip"
      sha256 "b3f4ec26577529220ce7420dba7cf4b117aa29945f58dcf83f6163358e1ca8c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_linux_arm64.zip"
      sha256 "049cb11806f5870338ea9ca60bb49d2af3641d3a5da23e84cda5e12ebbeea545"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_linux_amd64.zip"
      sha256 "6ce767700da2b334ce239377203c49d10486b2c435dd5ebfeb70e51a1368aeb7"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
