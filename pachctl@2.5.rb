require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.7/pachctl_2.5.7_darwin_amd64.zip"
    sha256 "769a9479cf67e1aba9a0b53cc60235eb957d8387b810adb2ff701a6283668fc6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.6/pachctl_2.5.6_darwin_arm64.zip"
    sha256 "a4cab553df8baa40d79e7c0c689c966aa68c4d0fedaea6a90aa8b3199b9770d6"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
