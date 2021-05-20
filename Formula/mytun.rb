# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mytun < Formula
  desc "MyTun.net - Expose any Port securely on internet"
  homepage "https://dashboard.mytun.net/"
  version "1.3.30"
  license "BSD 3-Clause License"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.30/mytun_1.3.30_darwin_amd64.tar.gz"
    sha256 "9650e99004da306ee88edbeb9b7b2182e604e56e2bf3a3724c6e45d9f691520d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.30/mytun_1.3.30_darwin_arm64.tar.gz"
    sha256 "41f6b1837f4c1520ec7e02b467c7da351bc96b7cc98a334f9ccc9b73b8f23ddd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.30/mytun_1.3.30_linux_amd64.tar.gz"
    sha256 "ba6b23d20db6d6690893ac8cfca3cfeda0e7328715c85c3992e379b24ac0d005"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.30/mytun_1.3.30_linux_arm64.tar.gz"
    sha256 "54ef5a84bc9f4af1417b60afde7cceeea7cd5795a25f34e674fa2bd070a54be8"
  end

  def install
    bin.install "mytun"
  end

  def caveats; <<~EOS
    Usage: mytun YOUR_DEVICE_TOKEN
  EOS
  end
end
