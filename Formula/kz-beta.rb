# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.345:kz-59.0.0-beta.345-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.345-osx-arm64.tar.gz"
  version "59.0.0-beta.345"
  sha256 "5a663e9903abf233d06f857af68ac73af412efa239d39335288055d078f8f9e7"

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
