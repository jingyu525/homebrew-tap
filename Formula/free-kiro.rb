# typed: false
# frozen_string_literal: true

# This file is auto-managed by GoReleaser. See:
#   https://github.com/jingyu525/free-kiro/blob/main/.goreleaser.yaml
#   (brews section)
#
# Manual edits will be overwritten on the next release.
# To bootstrap a new release before GoReleaser has ever run, the
# `sha256` line below uses a placeholder; the first `brew install` will
# fail with a checksum mismatch — bump to the next release and
# GoReleaser will fill in the real hash.

class FreeKiro < Formula
  desc "Spec-driven development workflow CLI (Kiro Spec workflow in Go)"
  homepage "https://github.com/jingyu525/free-kiro"
  url "https://github.com/jingyu525/free-kiro/releases/download/v0.4.1/free-kiro_0.4.1_darwin_arm64.tar.gz"
  sha256 "PLACEHOLDER_AUTO_FILLED_BY_GORELEASER"
  version "0.4.1"

  livecheck do
    url :stable
    strategy :github_latest_release
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jingyu525/free-kiro/releases/download/v#{version}/free-kiro_#{version}_darwin_arm64.tar.gz"
    else
      url "https://github.com/jingyu525/free-kiro/releases/download/v#{version}/free-kiro_#{version}_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jingyu525/free-kiro/releases/download/v#{version}/free-kiro_#{version}_linux_arm64.tar.gz"
    else
      url "https://github.com/jingyu525/free-kiro/releases/download/v#{version}/free-kiro_#{version}_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "free-kiro"
  end

  test do
    assert_match "free-kiro", shell_output("#{bin}/free-kiro --version")
  end
end