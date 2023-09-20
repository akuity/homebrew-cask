cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.1"
  sha256 arm:   "ac1548c568d3af5b54777ae4154561c1321b2594818a918a0146c6ccb74d116d",
         intel: "c55b9f66f98fa8c4bd5dc3b039c9bdec76f5e9837c2f0356193c9ac3e665f932"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
