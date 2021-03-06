# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OrgStats < Formula
  desc "Get the contributor stats summary from all repos of any given organization"
  homepage "https://github.com/caarlos0/org-stats"
  version "1.8.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/caarlos0/org-stats/releases/download/v1.8.0/org-stats_darwin_amd64.tar.gz"
      sha256 "7d29208c5ed8ba8eb6cac1daaf2fddc8e530df2c52524e9f1eace910a695f1f3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/caarlos0/org-stats/releases/download/v1.8.0/org-stats_darwin_arm64.tar.gz"
      sha256 "67c29d2dc997cc0b94896eaf49f55ceabd587d63e097f39b573924f35dcc9ee6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/caarlos0/org-stats/releases/download/v1.8.0/org-stats_linux_amd64.tar.gz"
      sha256 "f330b7e94878f6d41ebd20954a8e877528537853f300eb333c988a6f67c6ac47"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/caarlos0/org-stats/releases/download/v1.8.0/org-stats_linux_arm64.tar.gz"
      sha256 "ef03d9b54af7e69b809de275043cec1ca3d642083386652212f06342a18bcdc3"
    end
  end

  def install
    bin.install "org-stats"
    bash_completion.install "completions/org-stats.bash" => "org-stats"
    zsh_completion.install "completions/org-stats.zsh" => "_org-stats"
    fish_completion.install "completions/org-stats.fish"
  end
end
