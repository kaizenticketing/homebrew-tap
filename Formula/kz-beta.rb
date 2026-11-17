# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.346:kz-59.0.0-beta.346-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.346-osx-arm64.tar.gz"
  version "59.0.0-beta.346"
  sha256 "0031f3af9fd1c5aa1b0bed9d44ed895ad37cdf860a4617f84d6c9be0b0f2bc8e"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "kaizenticketing/tap/kz", because: "both install a kz binary"

  def install
    bin.install "kz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kz --version")
  end
end
