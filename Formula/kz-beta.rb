# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.352:kz-59.0.0-beta.352-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.352-osx-arm64.tar.gz"
  version "59.0.0-beta.352"
  sha256 "e7c8109b7ad26ec180035dab56a6ba019a7e9fc604bb8c1d2e7c09b68a503304"

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
