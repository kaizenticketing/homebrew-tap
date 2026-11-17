# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.344:kz-59.0.0-beta.344-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.344-osx-arm64.tar.gz"
  version "59.0.0-beta.344"
  sha256 "20aad056d1166c4816c960fac63e4f3310b5915a9285a313c3b1abb54c70b33b"

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
