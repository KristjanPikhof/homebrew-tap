class Acd < Formula
  desc "Atomic commit daemon for git worktrees, multi-harness"
  homepage "https://github.com/KristjanPikhof/Auto-Commit-Daemon"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KristjanPikhof/Auto-Commit-Daemon/releases/download/v2026-05-20/acd_2026-05-20_darwin_arm64.tar.gz"
      sha256 "2c01731fd84ca57e128a96e09f3bba979ecdeb32a9b34d7fb4cd489e56d6a5b5"
    else
      url "https://github.com/KristjanPikhof/Auto-Commit-Daemon/releases/download/v2026-05-20/acd_2026-05-20_darwin_amd64.tar.gz"
      sha256 "a35447e4a14983640c05f4d30266051ac35ee9250563056139db2a0c078caec6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KristjanPikhof/Auto-Commit-Daemon/releases/download/v2026-05-20/acd_2026-05-20_linux_arm64.tar.gz"
      sha256 "cfedb61402abf619831aaa581af1ce8e573c80ff3f3dd11e57c1568eccb6f898"
    else
      url "https://github.com/KristjanPikhof/Auto-Commit-Daemon/releases/download/v2026-05-20/acd_2026-05-20_linux_amd64.tar.gz"
      sha256 "25ca006616583be42c35d7ef36d067807d3fb1489353aef658ccaa8baa52afc0"
    end
  end

  def install
    bin.install "acd"
  end

  test do
    assert_match "acd version", shell_output("#{bin}/acd version")
  end
end
