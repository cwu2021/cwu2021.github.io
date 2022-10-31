# AWS::Lambda
https://metacpan.org/pod/AWS::Lambda
- sudo apt install libnet-amazon-s3-perl
## Use Cases of AWS Lambda
www.edureka.co
- Process data at scale
- Run interactive web and mobile backends
- Enable powerful ML insights
- Create event-driven applications
## Playing with Perl-based Lambda functions | by Andy Powell
https://medium.com/foundations/playing-with-perl-based-lambda-functions-37c12ca01ae6
# The Top 10 Programming Tasks That Perl Is Used For
<i>https://www.activestate.com/blog/top-10-programming-tasks-that-perl-is-used-for/</i><br>
In 2020, what are the tasks that Perl continues to be used for? Read on!

Programming languages wax and wane, but they never truly disappear. Sometimes that’s because the language is too widespread and therefore too costly to rewrite, and sometimes it’s because the language still offers the simplest way to accomplish a set of common tasks. Take Perl for example.

My first encounter with Perl gave me a false sense of its value since the professor taught Perl alongside other venerable Unix Command Line Interface (CLI) utilities like sed, awk, and grep, as just another way to manipulate text files. As a result, I came away with the impression that Perl was just for text manipulation, or writing system administration scripts in situations where Bash didn’t cut it.

If you browse through online forums, you’ll probably get the sense that even today Perl holds that same reputation in the eyes of many developers, which is an unfair characterization. As I’ve come to realize in the years since I was a college student trying to reorder text files, Perl can do much more. It’s also useful in a variety of settings beyond just Unix/Linux. Even in today’s cloud-centric age, Perl remains a highly valuable and versatile tool.

To prove the point, here’s a countdown of the top ten most common tasks that Perl is used for. You can (arguably) accomplish these more easily with Perl even today:
#10 Managing Cloud Data
It may be a truism, but it’s also true: all organizations have either adopted the cloud, or are in the process of doing so. Need to access data stored in a public cloud, but don’t want to use the cloud vendor’s proprietary CLI tools or Web interface? There’s a Perl utility for that.

In fact, Perl can easily interface with all the major cloud providers to help you manage data:

Use Perl to interface with AWS S3 storage buckets.
Third-party Perl tools also makes it possible to manage Azure Blob storage.
Perl supports Google Cloud Storage, as well.
#9 Managing Cloud VMs Or Virtual Machines With Perl
Likewise, Perl can be used to administer virtual machines running on either public or private clouds. For example:

Net::Amazon::EC2 provides a Perl interface to Amazon’s Elastic Compute Cloud (AWS EC2) using EC2’s Query API.
Similarly, VMware’s vSphere Perl SDK lets you manage VMware virtual machines in any situation. But because vSphere is a popular solution for building private clouds, Perl can be an essential tool for use in managing them.
While I am unaware of prebuilt solutions for interfacing with the virtual machine services on Azure or Google Cloud Platform via Perl, there’s no reason why this can’t be done.

#8 Perl Is Used For Serving Web Pages
Want an extremely lightweight, easily customizable Web server? You can implement one in Perl in under 200 lines of code (compare this to Apache HTTP, which weighs in at around 200,000 lines of code).

Granted, you probably wouldn’t want to use the Perl version for typical production workloads, but a minimalist, Perl-based Web server is ideal for systems with extremely limited hardware resources, such as you might find in an Internet of Things (IoT) deployment. Alternatively, if you just want to learn more about the fundamentals of how Web servers work, reviewing the Perl code can be quite instructive.

#7 Perl Is Used For Speech Recognition
Speech recognition is a complex, but increasingly important feature for a variety of applications from virtual assistants to chatbots. Here, too, Perl can help.

Whether you want to let your users input data via voice commands, or just create a text transcript of an audio file, you can use Perl to do it via modules like Google::Cloud::Speech, which provides an interface to Google’s Cloud Speech API.

While the hard work is done by Google Cloud’s API, Perl offers a simple way to interact with it, eliminating the need to learn and work with proprietary, vendor-specific APIs. And of course, you can then take advantage of tens of thousands of other Perl modules to aid in the creation of your application.

#6 Using Perl For Text-To-Speech Translation
Similar to speech recognition, Perl can also be used to translate text to speech using Google’s Translate Service in order to synthesize speech from any language text.

While text-to-speech may sound less exciting than speech-to-text, it can help you add valuable features to your application, such as screen reading for accessibility purposes, or enabling multi-tasking possibilities, or just helping to teach a new language.

#5 Software Testing With TAP
If you want to deliver software continuously and automatically, you must also test it continuously and automatically. Perl offers several best-in-class testing solutions, starting with the best known and most widely used Test Anything Protocol, aka. TAP::Harness.

TAP really just provides a text-based interface between Perl testing modules, but it’s so robust and easy to use that it now has implementations in C, C++, Python, PHP, Perl, Java, JavaScript, and more.

#4 Use It For Scripting System Administration Tasks
Perl’s devoted following has always been strongest in the Unix/Linux world, where administrators often use it to script common system administration tasks.

But Perl can also come in handy in Windows-centric environments. You can interface with Active Directory via Perl, and even interact with the Windows registry. Need to keep track of what’s installed on users’ systems? Or perform routine updates/maintenance at system boot time? Perl can offer the best way to script such administration tasks on Windows as well as Linux.

#3 Bioinformatics With BioPerl
Although bioinformatics is probably not at the top of most developer’s lists of uses for Perl, there’s a whole community dedicated to it called BioPerl. Perl-based solutions for bioinformatics and genomics span the gamut from retrieving genomic sequences to studying population genetics.

Even if you’re not in the bioinformatics space, there’s still a lot to learn from the code.

#2 Log Management Can Be Best Done With Perl
Given the extent to which modern computing environments have become distributed, as well as the way they blend so many different types of components (each with its own logging mechanism), modern log management has become a science unto itself.

On this front, Perl is invaluable as a way to interface with most log management platforms, from standards like syslog to proprietary systems like Papertrail. And of course, you can also write your own Perl scripts for aggregating and interpreting logs, which is useful in situations where you need a highly customized log management solution.

#1 Perl Is Best Suited For Text Manipulation
It should come as no surprise that manipulating text remains the #1 use for Perl. In fact, Perl has been the goto language for regex, HTML parsing, JSON manipulation, etc for almost three decades. Quite simply, no other programming language provides more powerful or easy-to-use ways of manipulating text.

There’s a wealth of Perl community modules that can help simplify just about any task associated with manipulating, extracting and transforming strings. We’ve pre-compiled many of them In our Perl Text Processing environment that you can download and install for free using our State Tool CLI:

Create a free ActiveState Platform account
If you’re on Windows, you can use Powershell to install the State Tool:
IEX(New-Object Net.WebClient).downloadString('https://platform.activestate.com/dl/cli/install.ps1')Or if you’re on Linux, you can use curl to install the State Tool:
sh <(curl -q https://platform.activestate.com/dl/cli/install.sh)
Once the State Tool is installed, just run the following command to download the build and automatically install it into a virtual environment:
state activate ActiveState/Perl-Text-Processing
From Managing Cloud-Based Services To Developing Apps With Speech Recognition Features, Perl Is Used For Various Programming Solutions.
In 2020, it’s easy to write off Perl as a language whose heyday has passed. But the reality is that, more than thirty years after its first release, Perl remains not only alive but still evolving (hello Perl 7!).

Perl’s ability to adapt and evolve is truly remarkable, and a testament to how well it was originally designed. It’s also a testament to how dedicated the Perl community has been over the years to apply Perl to just about any new task they’ve faced. Despite the pace at which new technologies have been introduced, Perl’s usefulness for certain tasks has never really diminished. From managing cloud-based services to developing apps with speech recognition features, to sequencing genomes, Perl continues to offer solutions.
