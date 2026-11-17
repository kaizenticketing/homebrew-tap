# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.342:kz-59.0.0-beta.342-osx-arm64.tar.gz:download?alt=media"
  version "59.0.0-beta.342"
  sha256 "c45595dc3c5ae035e4631bacc9fcea9304f5c199339f823a15595036503dd9e6"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "kz", because: "both install a kz binary"

  def install
    bin.install "kz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kz --version")
  end
end
