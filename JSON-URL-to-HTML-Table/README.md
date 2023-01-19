# 如何將您的網站遷移至內容管理系統（CMS）？
https://news.gandi.net/zh-hant/2020/08/how-to-migrate-from-a-website-builder-to-a-cms/

# JSON-list
JSON URL to HTML List<br>
<i>(modified from https://github.com/sam-suresh/JSON-URL-to-HTML-Table)</i>

Grab data from JSON URL and list in a table.

Update URL in listify-json.js for your json URL.

Change id, title, userId with the field names from your JSON output. 

 	row.append($("<td>" + rowData.id + "</td>"));
    row.append($("<td>" + rowData.title + "</td>"));
	row.append($("<td>" + rowData.userId + "</td>")); 
# Unicode 編碼轉換工具
<i>https://www.ifreesite.com/unicode-ascii-ansi.htm</i><br>
 For example: "\u937e\u6771\u9326\u906d\u570b\u6c11\u9ee8\u958b\u9664\u9ee8\u7c4d \u63da\u8a00\u53cd\u544a\u9ee8\u4e2d\u592e"
# S3 Bucket Policy to make a specific sub folder public and everything else private?
<i> https://stackoverflow.com/questions/21917769/s3-bucket-policy-to-make-a-specific-sub-folder-public-and-everything-else-privat </i> <br>
<i> https://s3browser.com/working-with-amazon-s3-bucket-policies.aspx </i> <br>
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "AllowPublicRead",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::BUCKETNAME/*/128/*"
        }
    ]
}
## and set ACL to prevent object listing for public bucket.
 - https://stackoverflow.com/questions/9558831/how-to-prevent-directory-browsing-of-s3-bucket
# Add Google Analytics Tracking to a Website
<i>https://chartio.com/learn/marketing-analytics/how-to-add-google-analytics-tracking-to-a-website/</i><br>
<i>https://warwick.ac.uk/services/its/servicessupport/web/sitebuilder2/faqs/analytics/google/</i><br>
Admin > Property (add new) > Tracking Info > Tracking Code
