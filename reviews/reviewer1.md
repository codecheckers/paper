Reviewer 1

In this article, authors propose to implement a procedure to check for
the code accompanying a submission to a journal. To do so, they
describe a pipeline made of 6 steps that ultimately lead to the
delivery of a code check certificate meaning that someone external to
the author's lab has managed to re-run the code. At this point, no
checking that the results are correct is necessary. The authors
already issued several codecheck certificates in different
disciplines. I find the idea really nice and certainly necessary but
I've a few questions (even though some of them are already addressed
in the "limitations" section). Given the structure of the paper, I'll
just list my questions here:


1. How does CODECHECK compare to ACM Artifact reviews badges?
(https://www.acm.org/publications/policies/artifact-review-and-badging-current)
 
2. What would be the incentive for someone to code check the code? Being
aware of the increasing difficulty in finding reviewers, I don't think
it would be easy to recruit people to perform a task that can rapidly
become very technical and time consuming.

 
3. How do you handle the case when specific hardware is necessary
(e.g. NVidia GPU)? Is it documented somewhere such that code-checkers
might first verify if they have the necessary hardware to run the
code?

 
4. How do you establish a check has failed? For example, what happens if
a code-checker gets a segfault (for some unknown reason) and the
author is unable to help. Is it deemed failed?

 
5. Who will pay for the computing resources needed to run heavy
simulations and/or to acquire necessary software such as e.g. Matlab?
When a simulation consumes a lot of resources, it might wise to give
the checker access to computing resources. This could be paid for by
the journal.

 
6. I did not see in the report example a description of the environment
necessary to run the software. How did you solve the "dependency
hell"? Since the code might break at some point in the future because
of incompatibility in some libraries or environments, it would be
necessary to have a mechanism describing the running environment such
that it can be re-run later.

 
7. What do you recommend if the reviews are both excellents but the code
check failed? Does this mean the paper is blocked until code check
passes or rejected or else?

 
8. The code check proposal is close to some extents to the Journal of
Open Science Software where each reviewer is assigned a list of things
to check during the review. Do authors consider this pipeline when
establishing their own pipeline?

 
9. To what extent the codecheck certificate can be updated automatically
via some kind of "manual continuous-integration"? I mean that when
reading a paper online, would it be possible to click a button to test
if the code still runs considering the latest versions of libraries?
(for example, the certificate has been issued for Python 2 but I want
to know if this is usable with Python 3).

 
10. When you look at journals advertising open data policies, it is
unfortunately not rare to find articles in these same journals without
the actual data. Do you have some suggestion for educating editors to
actually enforce the code check a journal adopt it?


    
Some suggestions:

11. The badge that is delivered would need some time information since the
check is valid at one point in time (with a given software stack) and
does not guarantee future runs.

 
12. For specialized journals, you could consider to offer a common generic
environment where a code could be first tested. It this fails, then
you would need only to slightly modify the environment to add missing
dependencies. For example, in neuroscience, a Neuro Debian would
probably suit the needs of a large number of models.


13. As editor-in-chief of ReScience C, I would like to inform authors
  that the journal now accepts "reproduction report". The idea it to
  try to re-run the code accompanying a published article and to
  report if it succeeded or failed. Our own procedure to check for
  reproduction is not standardized and we'll certainly benefit from
  the code check initiative.
  

Overall, it's nice to have a clean description of a pipeline to check
for code even though some questions need to be addressed. Also, I'm
not too confident that journals will adopt it immediately and I'm
afraid such initiative will take time to be generalized. But we have
to start somewhere.


