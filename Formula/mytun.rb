# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mytun < Formula
  desc "MyTun.net - Expose any Port securely on internet"
  homepage "https://dashboard.mytun.net/"
  version "1.3.15"
  license "BSD 3-Clause License"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.15/mytun_1.3.15_darwin_amd64.tar.gz"
    sha256 "cb315c1a872bb9074c8f357a94d7f1791bc101596be4a007a4a55d09a0b93c65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.15/mytun_1.3.15_darwin_arm64.tar.gz"
    sha256 "34ae15a92e05ad090fc89d65a990f2ff9f2f50698ebe8b863d052c0fb03ea941"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.15/mytun_1.3.15_linux_amd64.tar.gz"
    sha256 "7df6ce5368c3af7a18558ede639e43bb640c818520484d7c2861b076b9629fe5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/mytunnet/homebew-mytun/releases/download/v1.3.15/mytun_1.3.15_linux_arm64.tar.gz"
    sha256 "5aa6cf12b19964b6837308c240564451479b723f9cb0e1c24f734a0d711be5af"
  end

  def install
    bin.install "mytun"
  end

  def caveats; <<~EOS
    How to use this binary
  EOS
  end
end
