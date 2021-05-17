# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mytun < Formula
  desc "MyTun.net - Expose any Port securely on internet"
  homepage "https://dashboard.mytun.net/"
  version "1.3.16"
  license "BSD 3-Clause License"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.16/mytun_1.3.16_darwin_amd64.tar.gz"
    sha256 "276b5b6adcc1803f86897f1a67661cc31af385d526f9af64dd74ec106be0e823"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.16/mytun_1.3.16_darwin_arm64.tar.gz"
    sha256 "864f5d02df9706896219b78d6267bc409f3bc28727cb05331a93bd43271b68cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.16/mytun_1.3.16_linux_amd64.tar.gz"
    sha256 "dd64e981b799c9072669a84fd908e171547cebf6f46c765fc6d69575cae9d80a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.16/mytun_1.3.16_linux_arm64.tar.gz"
    sha256 "39bf96a472b60c240c038725e5cb4a0ade700b5833a38be88d41bf1aaf71d648"
  end

  def install
    bin.install "mytun"
  end

  def caveats; <<~EOS
    Usage: mytun YOUR_DEVICE_TOKEN
  EOS
  end
end
