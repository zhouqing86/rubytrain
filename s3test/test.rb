

require 'aws/s3'


# s3 = AWS::S3.new(
#     :access_key_id => '123',
#     :secret_access_key => 'fakeS3',
#     :s3_endpoint => 'fake-s3.cn.vpc.realestate.com.au',
#     :s3_force_path_style => true,
#     :use_ssl => false)

AWS::S3::Base.establish_connection!(
       :access_key_id => "123",
       :secret_access_key => "fakeS3",
       :server => "fake-s3.cn.vpc.realestate.com.au")

puts AWS::S3::Bucket.objects('myfun-dev-syndication').size

objects = []
last_key = nil
begin
  new_objects = AWS::S3::Bucket.objects('myfun-dev-syndication',:prefix => '20140901021031', :marker => last_key)
  objects    += new_objects
  last_key    = objects.last.key if objects.last
end while new_objects.size > 0

#   Bucket.objects('jukebox', :marker => 'm', :max_keys => 2, :prefix => 'jazz')

puts objects.size
