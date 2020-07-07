bucket_name = "ivantests32"

control 's3_content' do
  describe command('aws s3 ls s3://' + bucket_name) do
    its('stdout') { should match (/test1/) }
    its('stdout') { should match (/test2/) }
  end
end

d = Time.now.utc
d = d.strftime("%Y-%m-%d")

control 's3_object_content' do
  system("aws s3api get-object --bucket #{bucket_name} --key test1.txt test1.txt > /dev/null")
  describe command('cat test1.txt') do
    its('stdout') { should match (d) }
  end
  system("aws s3api get-object --bucket #{bucket_name} --key test2.txt test2.txt > /dev/null")
  describe command('cat test2.txt') do
    its('stdout') { should match (d) }
  end

end