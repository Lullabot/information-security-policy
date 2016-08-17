#Security Handbook Management

## Branches
There are two permanent branches of the security handbook, the master branch, which contains the handbook pages that pertain to Lullabot employees, and the contractors branch, which contains the handbook pages that pertain to contractors.

Wherever possible, pages that pertain to both contractors and employees should be worded in a way that will pertain to both. In the few instances where this is not possible, the contractors branch could contain alternative wording. It will be hard to make sure pages with differences get updated, so they should be avoided.

All pages will be maintained and updated in the master branch. Pages that don't apply to both will still be included in the master branch but be omitted from the handbook they don't apply to. This will be done by altering the SUMMARY.MD, which is basically the table of contents for the book. Any page not listed in SUMMARY.MD will not appear in that version of the book.

Ideally the only difference between the contractor's branch and the master branch will be the SUMMARY.MD file that indicates which pages belong in that version of the handbook.

**To keep the contractors branch in sync with master, the master branch must be merged into the contractors branch every time there is a change to the master branch!! Each time that is done, the contractors version of SUMMARY.MD must be protected from being overwritten so that it continues to contain only the contractors pages.**

## Creating a PDF
A PDF of either handbook can be created at any time and given to an employee or contractor. The process of doing this involves the following steps:

* Go to [https://www.gitbook.com/book/lullabot/information-security-policy/activity](https://www.gitbook.com/book/lullabot/information-security-policy/activity) and select the branch you want to work with, master or contractors.
* There is a drop-down arrow in the top right corner of the page. It will reveal the following choices:
	* Download PDF
	* Download EPUB
	* Download MOBI
	* Read Online
* Select the option to download PDF and you will get a PDF of the latest version of the book for the branch you selected.