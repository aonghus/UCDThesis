# Template for the PhD thesis at University College Dublin (UCD)

**This template has not been reviewed or approved in any way by either UCD or the School of Computer Science**

Available on [Overleaf]()

Before you start with this template, please have a look at this page: [Guidelines for Preparation, Submission, Examination and Dissemination of Research Degree Theses](https://www.ucd.ie/graduatestudies/t4media/Research%20Degree%20Examination%20Guidelines%20%20August%20%202023.pdf). It will give you some important background information concerning the presentation of your thesis. 


As far as I can tell, UCD do not provide a latex template and it is up to you to ensure that your thesis conforms to the guidelines before submitting it. This template is based on the well-known [ClassicThesis](https://ctan.org/pkg/classicthesis?lang=en) template, with some additions to conform to the UCD requirements. You are welcome to use it, and to customise it for your own needs. 


The rules about how the thesis should be prepared are fairly concise:

>
>- Layout: Layout: Margins at the binding edge shall be not less than 30mm and other margins not less than 20mm. One-and-a-half spacing shall be used, except for indented quotations and footnotes, where single spacing may be used.
>- Font: The recommended font shall be a sans serif font (including Arial, Helvetica, Tahoma or Trebuchet) and shall not be less than 11pt. Footnotes shall not be less than 9pt.
>- Page Numbering: Pages shall be numbered consecutively throughout the substantive text of the thesis, including appendices. Prefacing pages shall also be numbered consecutively, but utilising the Roman numeral format (i., ii., iii., iv., v., etc.). Page numbers shall be right justified at the bottom of the page. If there is more than one volume, each volume shall carry its own pagination.
>- Title Page: The title page of every volume shall give the following information in the order listed:
>   - The full title of the thesis and subtitle, if any.
>   - The full name of the author (followed, if desired, by any qualifications).
>   - The candidate’s UCD student number.
>   - That "This thesis is submitted to University College Dublin in fulfilment of the requirements for the degree of [Research Masters or Doctor of...(insert as applicable)].
>   - The School(s) in which the research was conducted.
>   - Name(s) of the Head(s) of School(s) in which the research was undertaken.
>   - Name(s) of the Principal Supervisor, and Co-supervisor(s) if relevant, of the research.
>   - The month and year of submission of the thesis to the University for examination.
>   - If a thesis is submitted for re-examination, the resubmission month and year should be listed on the title page.
>- Table of Contents: The table of contents shall immediately follow the title page. It should list the title of each chapter and the main sections in each chapter together with the relevant starting page numbers.
>- Other Lists: Lists of tables, figures, diagrams, photographs, abbreviations etc . If a thesis contains such lists it is required that a separate list of each item, as appropriate, is provided immediately after the Table of Contents page(s). Such lists must give the page number of each item on the list.
>- Abstract: There shall be a summary abstract of the thesis (of approximately 300 words) immediately following the Table of Contents page(s)
>- Statement of Original Authorship: The following statement of original authorship shall immediately follow the abstract page, “I hereby certify that the submitted work is my own
work, was completed while registered as a candidate for the degree stated on the Title Page, and I have not obtained a degree elsewhere on the basis of the research presented in this submitted work”.
>- Collaborations: Where the research activity for the thesis was undertaken jointly with
others, the name of such collaborators or co-authors must be listed immediately following the statement of original authorship page, including a short description of the nature of the contribution made by each author, including the candidate. Appendix 2 ‘‘Principles for the Production of Alternative Thesis Format’ provide additional guidance on acknowledging such collaborations.
>- Publications from the work (if relevant): List any publications or articles submitted for publication from the research described in the thesis
>- Acknowledgements (if required): Dedication, acknowledgment and similar can be included as the final page
>- Bibliography: The style of bibliographic citations and references may be chosen by the candidate but must be consistent throughout the thesis.


And finally, each School will have their own guidelines and customs and you should consult your supervisor to ensure you follow the appropriate norms:


> - It is recommended that candidates discuss word or page limits for the chapters with their supervisor(s) and Research Studies Panel, as norms will vary across disciplines.


I can't support [ClassicThesis](https://ctan.org/pkg/classicthesis?lang=en), but there is plenty of information about how to customise it online. 


If you want to customise any of the settings, the place to start is [tex/classicthesis-config.tex](tex/classicthesis-config.tex). The main file is `UCDThesis.tex` which `\includes` the files for each section. The first thing you will do is modify the `Personal Data` in `tex/classicthesis-config.tex`.


[Overleaf](https://www.overleaf.com/learn) has some excellent documentation to get you started with latex.


I tried to follow the UCD guidelines as closely as possible. If you have any improvements or suggestions for this template, feel free to contact me: [aonghus.lawlor@ucd.ie](mailto:aonghus.lawlor@ucd.ie). 


## FAQ 

**Compilation fails with: `Latexmk: Couldn't find aux file 'out/FrontBackmatter/Titlepage.aux'`**
> The output of a latex compile is placed in the `out` directory, which is created the first time you run `make`. Just run `make` again and it should compile fine.

**The default latex engine is `lualatex`. Can I change it to `pdflatex`?**
> Yes, you can change it and it should work, except for the title page. There are a few fonts on the title page and it's a lot easier to switch fonts with `fontspec` which is not supported by `pdflatex`. Fixes should be straightforward- happy to accept contributions!

**I have a problem with special characters, the compilation fails as soon as there is a special character in my file**
> For best cross-platform compatibility, the template is configured for "UTF-8" input encoding instead of platform specific encodings (such as "Western-Latin for Mac").


## Contributors

* Aonghus Lawlor

