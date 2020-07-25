class SNEdit < Formula
  tag = "v0.2"
  
  desc "The sn-edit cli app"
  homepage "https://github.com/sn-edit/sn-edit"
  version tag
  depends_on :arch => :x86_64
  
  if OS.mac?
    url "https://github.com/sn-edit/sn-edit/releases/download/#{version}/sn-edit-darwin-amd64"
    sha256 "e013654050f4dec315fe33e2c5598e87ea505e2fe9ddcbb56c4301eac63c523a"
  elsif OS.linux?
    url "https://github.com/sn-edit/sn-edit/releases/download/#{version}/sn-edit-linux-amd64"
    sha256 "b08f1f9e63408235a542d4fa22d7ff2f83d838558a55a36cf00c580d5e7d153d"
  end
  
  def install
    bin.install Dir.glob("sn-edit*").first => "sn-edit"
  end

  bottle :unneeded

  test do
    system "false"
  end
