# written by ticketing's kz release workflow - do not edit by hand
class KzBeta < Formula
  desc "Command line for the Kaizen Ticketing management API"
  homepage "https://github.com/kaizenticketing/homebrew-tap"
  url "https://artifactregistry.googleapis.com/download/v1/projects/ticketing-shared/locations/europe-west2/repositories/binaries-public/files/kz-beta:59.0.0-beta.351:kz-59.0.0-beta.351-osx-arm64.tar.gz:download?alt=media&file=kz-59.0.0-beta.351-osx-arm64.tar.gz"
  version "59.0.0-beta.351"
  sha256 "659a640a33d6306296e04d0c0281b018259c1743dfc6b14f557f77f7020232db"

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
