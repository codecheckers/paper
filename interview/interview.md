
    Please tell us a little bit about yourselves and your field of research.

Daniel is a researcher at the Spatio-temporal Modelling Lab, based at
the Institute for Geoinformatics (ifgi) at the University of
Münster. Daniel is just completing a PhD in the context of the DFG project
Opening Reproducible Research where he develops tools for creation and
execution of research compendia in geography and geosciences.

Stephen is a Professor of Computational Neurosience in the Department
of Applied Mathematics and Theoetical Physics, University of
Cambridge.  Stephen's primary research interests are in understanding
the development of the nervous sytem using computational approaches.

They share a mutual interest in open research, and in particular ways
to encourage reproducible computational research.


    What inspired you to create CODECHECK? What is it exactly?
	
Daniel and Stephen joined forces to create CODECHECK after learning
that they had independently submitted similar research projects to an
open research grant call from Wellcome.  They jointly created
CODECHECK after gaining a science mini-grant from Mozilla.

CODECHECK is our system for checking that code and data provided alongside
a research article can regenerate the figures and tables contained in
that article.  A codechecker independently follows the authors' instructions
for reproducing these artifacts, and if successful, writes a
certificate to summarise the reproduction.  These certificates can
then be freely shared alongside the research article to demonstrate
that the results are reproducible.

    How did community feedback shape the workflow and principles that
	uphold CODECHECK?

During development, we talked to numerous parties, including
publishers, potential authors and reviewers.  This was very helpful to
refine and reshape our ideas during development.  Our interpretation of
the ideals that underpin the Open Science movement are certainly also
reflected in the principles, with a strong emphasis on transparency,
giving proper credit, and open collaborations for scientific progress.

    One of CODECHECK’s core principles is “communication between humans is key”—why is this so important to this process? Could
    combining CODECHECK with Open Peer review be beneficial in this regard?

We regard the codecheck as a form of peer review; we opted however to
allow the codechecker and author to talk directly to each other,
rather than via a 3rd party, such as a journal editor, or through some
technical system that tries to uphold anonymity.  We felt this
was important to help make the process efficient and constructive, because
it is very hard to provide a complete set of instructions for some unknown
party to reproduce one's workflow. This one of the reasons for the whole
reproducibile research "crisis", and connecting people is much less time
consuming and more educational than creating documentation for an unknown
user.
As codecheckers are not evaluating the research for some notion of
'quality' or 'correctness', we think that this process should be
cooperative.  And certainly, yes, codecheck could be formally seen as
an open peer review process, as one possible implementation of our
principles.

    What are the incentives for someone to check the code? How is
	credit given?
	
This is a great question.  Codecheckers have volunteered for this
process for many reasons, as we outline in our discussion, including
to gain exposure to new results, making professional contacts with
other groups, and supporting new open research initiatives.  Credit is
currently given via having the certificate available as a citable
object, which we hope will be recognised as a valuable service, along
with other reviewing activities.  In several cases the final paper
also linked to the CODECHECK certificate, e.g., in the acknowledgements
section or where the data and software availability is documented,
for which we are grateful to our collaborating editors and publishers
that they have made this possible.

    Why does this represent a good opportunity for early career
	researchers, specifically?
	
We can think of several reasons why ECRs might benefit.  (1) They have
time and interest in eperimenting with new ways of working.  (2) They
are already familiar with new technologies that underly computation.
(Stephen has learnt much from Daniel about many of these new
technologies.) (3) As mentioned above, being a codechecker may
naturally lead to discussions with authors in research labs with
mutual interests, leading to new collaborations, which are especially
crucial but also hard to build early in your career.
(4) They make (first) experiences being part of a peer review process,
get to know the journal editors, and, over time, may serve as regular
scientific peer reviewers.

    How can CODECHECK contribute to increased trust in research
	outputs?

It is still commonplace today to read in papers statements such as
'data available upon request'.  By contrast, if you see a codecheck
certificate, you can guarantee that the data (and code) are already
available, and that the results in the paper have been reproduced by
someone else.  We think this should send a positive signal that the
author has annotated their research outputs in such a way that others
can reuse them appropriately.

    What impact do you hope the CODECHECK initiative will have?

We think it is just one of a number of complementary approaches to
tackling the 'reproducibility crisis'.  We think that our approach is
suitable for large scale work, where creating interactive documents
(such as eLife's Executable Research Article) cannot be used to the
computational demands.  Furthermore, the CODECHECK itself is an open
initiative, so different communities may implement codechecking in
different ways.  The common principles and shared understanding may
help to spread the practice further, even across disciplines.  
CODECHECK has already been adopted by one Open Science officer at a
Dutch university, so papers are checked following our guidelines
before submission, which is an unintented but very positive example.
We hope that it will be adopted by journals, see next...

    What are the current barriers to implementing CODECHECK at scale? How can the scientific community and the publishing industry work
    together to overcome them?

We think that our current work demonstrates that CODECHECK is one
sensible approach to demonstrating reproducibility of research
articles.  However, to develop it at scale, we need several resources:
1. Compute resource to allow codecheckers to re-run compute-intensive
   jobs.  Currently we have been making use of compute resource available
   locally to code-checkcers.
2. A CODECHECK editor, either full or part-time to help coordinate activities.
3. More volunteer codecheckers are always welcome.
4. Open-minded publishers and editors who want to embrace reproducibility
   and openness based on the CODECHECK principles.

Collaboration between researchers and publishing industry,
perhaps via jointly grants, would help greatly in this regard.
