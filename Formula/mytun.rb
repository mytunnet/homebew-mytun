# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mytun < Formula
  desc "MyTun.net - Expose any Port securely on internet"
  homepage "https://dashboard.mytun.net/"
  version "1.3.31"
  license "BSD 3-Clause License"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.31/mytun_1.3.31_darwin_amd64.tar.gz"
    sha256 "52ef46808c86ce264cc409021ff6c1074ffcf0b8388fe4f7b0f9b88091343fc2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.31/mytun_1.3.31_darwin_arm64.tar.gz"
    sha256 "696bc27a9d8aa1f2a2219b18ecfac0121bea4b58fc6f14ab77a40560c05d1bd6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.31/mytun_1.3.31_linux_amd64.tar.gz"
    sha256 "28fb5458e6ca1dfc0abea47d6c5d4fa0fb59e29e87a4034492bafdeb472aff26"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.31/mytun_1.3.31_linux_arm.tar.gz"
    sha256 "0b0bc8a94bc7ec365254d974308c518011a25c3ba6c2978423a0e4670b0d9054"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.31/mytun_1.3.31_linux_arm64.tar.gz"
    sha256 "881269de4b50c965c0100cd13b124068d48510d75166472d4c5e0b01d1564392"
  end

  def install
    bin.install "mytun"
  end

  def caveats; <<~EOS
    Usage: mytun YOUR_DEVICE_TOKEN
  EOS
  end
end
