# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.343:kz-59.0.0-beta.343-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.343-osx-arm64.tar.gz"
  version "59.0.0-beta.343"
  sha256 "73be29e0728ad9dc4fef1be0d7ce1db65e3d5a1ddba3cdc1d50a105d661ec562"

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
