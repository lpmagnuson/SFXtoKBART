A couple of XSL scripts that can be used for transforming SFX's 
Google Scholar output into a KBART file.  

The scripts are pretty hacky, so review the output before uploading into
any knowledge base that accepts KBART, such as OCLC's Knowledge Base.

They were also designed for parsing out print collections that 
may have been uploaded to SFX, so the scripts may require editing to
use will fulltext collections.  Both scripts will calculate and populate
embargo values.

## What you'll need ##
You'll need an export of a target from SFX in the "Google Scholar" Format.

## gs_xml_kbart.xsl ##
This is the 'standard' script.  It creates an entry for each threshold
present in the SFX target.  This means if you have multiple thresholds defined
in the target (such as 1990-1995 then 2000-present) the script accounts for this and
puts each threshold on its own line.

## gs_xml_kbart_simple.xsl ##
This script is a 'simplified' version, meaning it will only take the first
date threshold set and create an entry for that.  Depending on how your 
thresholds were defined in SFX, the simplified version may work better on your Google
Scholar export.






