
# Prelim for F1000R

We have written a detailed 'response to reviewers' document which is
available at
<https://github.com/codecheckers/paper/blob/master/reviews/response-round1.md>

However, in brief, we have added text to the manuscript, to the
"related work", "limitations" and "future work" to address key issues
made by the reviewers and by one public comment.
These edits have resulted in a few additional
sentences in our article; no changes to figures/tables or references
were required.

Furthermore, we noticed an inconsistent use of the terms "workflow" 
and "process", and decided to use "CODECHECK workflow", "computational workflow", and 
"publication/review process" more consistently in the revision of the manuscript.


# Response to reviewers


We thank the reviewers for their comments on our manuscript.  
key comments, requiring responses, are below, quoted, followed by our
answers.  (We have added numbers to the key points.)


## Reviewer 1

<https://doi.org/10.5256/f1000research.54932.r82470>



> 1. How does CODECHECK compare to ACM Artifact reviews badges?
> (https://www.acm.org/publications/policies/artifact-review-and-badging-current)
 
These badges, introduced in August 2020, show whether code is
available (different levels) and reproduces same results.  In
principle CODECHECKER could award these badges (artifacts evaluated,
functional).  We have made a note to this effect in the manuscript
(Related work, end of paragraph 1.)
 
> 2. What would be the incentive for someone to code check the code?
> Being aware of the increasing difficulty in finding reviewers, I
> don't think it would be easy to recruit people to perform a task
> that can rapidly become very technical and time consuming.

This was addressed in our section "Who's got time for more peer
review?" We would however note that we have a pool of about 20
volunteers currently willing to do codechecks.

> 3. How do you handle the case when specific hardware is necessary
> (e.g. NVidia GPU)? Is it documented somewhere such that
> code-checkers might first verify if they have the necessary hardware
> to run the code?

This was handled in the limitation "What about my proprietary software
and sensitive data." but we now mention hardware too in the first
paragraph of that section.
 
> 4. How do you establish a check has failed? For example, what
> happens if a code-checker gets a segfault (for some unknown reason)
> and the author is unable to help. Is it deemed failed?

We hope that codechecker and author can resolve problems, but in
the end there may be problems that cannot be solved.  Open
infrastructure could help as both author and codechecker can work
together in the same environment to minimise these failures.
Ultimately however, there may be failures, which are noted in the
section "How are failures during checks handled?".
 
> 5. Who will pay for the computing resources needed to run heavy
> simulations and/or to acquire necessary software such as
> e.g. Matlab?  When a simulation consumes a lot of resources, it
> might wise to give the checker access to computing resources. This
> could be paid for by the journal.

In the section "Who will pay for compute time?" we mention this
problem, and that toy examples might alleviate the need to re-run
resource-intensive computations.  We agree that one model might be
that a journal provide some resource for this service.  Likewise,
in the following paragraph, we describe that our pragmatic
approach for now is to find codecheckers that have access to
particular software, e.g. MATLAB.

 
> 6. I did not see in the report example a description of the
> environment necessary to run the software. How did you solve the
> "dependency hell"? Since the code might break at some point in the
> future because of incompatibility in some libraries or environments,
> it would be necessary to have a mechanism describing the running
> environment such that it can be re-run later.

The short answer is "we didn't".  In the paragraph "Should CODECHECK
requirements be more demanding?" we note our low bar of simply getting
a codecheck to run once.  We do, however, encourage CODECHECKERS to
describe the environment in free text form in their report.  Moving
towards machine-readable descriptions would be a natural extension.

> 7. What do you recommend if the reviews are both excellents but the code
> check failed? Does this mean the paper is blocked until code check
> passes or rejected or else?


This is up to the editor of the journal -- see the "Importance"
dimension of Figure 3.  At one end, it could indeed be a "strict
requirement" to get a codecheck certificate for the paper to be
accepted.  On the other hand, it could be entirely optional.


> 8. The code check proposal is close to some extents to the Journal
> of Open Science Software where each reviewer is assigned a list of
> things to check during the review. Do authors consider this pipeline
> when establishing their own pipeline?

We have not considered this pipeline, nor do we have an explicit idea.
We now note this reviewer list at the end of the third paragraph of
"Related Work".
   
 
> 9. To what extent the codecheck certificate can be updated
> automatically via some kind of "manual continuous-integration"? I
> mean that when reading a paper online, would it be possible to click
> a button to test if the code still runs considering the latest
> versions of libraries?  (for example, the certificate has been
> issued for Python 2 but I want to know if this is usable with Python
> 3).

To follow on from point 6, this would make a natural extension, but for
now we are still considering one point in time, and keeping the
requirements as close to the authors as we can.
 
> 10. When you look at journals advertising open data policies, it is
> unfortunately not rare to find articles in these same journals
> without the actual data. Do you have some suggestion for educating
> editors to actually enforce the code check a journal adopt it?

We share this concern, and unfortunately have no simple
suggestions for helping editors.  At this early stage, we think
the approach should be one of encouraging uptake, rather than
mandating it.  We also hope that having specific in-house
experience, e.g. editorial staff to examine for code and data
availability, can note this.  But at the end of the day, this
again is dependent on the journal's workflow.

    

> 11. The badge that is delivered would need some time information
> since the check is valid at one point in time (with a given software
> stack) and does not guarantee future runs.

Great idea. we could add the certificate number to the URL, or add
the certificate number.  We will try to implement this when
revising our workflows.  Nevertheless, the point in time and software
stack should be documented via the certificate already now.

 
> 12. For specialized journals, you could consider to offer a common
> generic environment where a code could be first tested. It this
> fails, then you would need only to slightly modify the environment
> to add missing dependencies. For example, in neuroscience, a Neuro
> Debian would probably suit the needs of a large number of models.

Yes. We will certainly bear this in mind in future work, especially
for author guidelines.


> 13. As editor-in-chief of ReScience C, I would like to inform
> authors that the journal now accepts "reproduction report". The idea
> it to try to re-run the code accompanying a published article and to
> report if it succeeded or failed. Our own procedure to check for
> reproduction is not standardized and we'll certainly benefit from
> the code check initiative.

Thank you for noting this.  We now mention the reproduction report in
the manuscript where we describe Rescience C.

> Overall, it's nice to have a clean description of a pipeline to
> check for code even though some questions need to be
> addressed. Also, I'm not too confident that journals will adopt it
> immediately and I'm afraid such initiative will take time to be
> generalized. But we have to start somewhere.

We share your realistic assessment that (a) journals may be slow
to adopt but that (b) we should start somewhere.

## Reviewer 2
<https://f1000research.com/articles/10-253/v1#referee-response-82472>

> 1. Is there any community feedback on the transparency and
> reusability of research published with CODECHECK certificates?

> This is perhaps too big of an ask this early in the initiative as
> research reuse and citations are independent factors of the
> publication and peer review of this specific paper - but I’d still
> be interested in any insights the authors have to offer on this
> topic.


This is an excellent question.  It is perhaps too early for us to
assess this given most certificates are under a year old, but we
are not aware of any reuse yet of the codecheck-deposited
material.  However, we certainly think it interesting to try and
monitor this over a longer (3-5 year) timescale if possible.   As
well as looking for citations of certificates, we could also check
for forks of our repositories, and download statistics from
Zenodo.  We note this as a good closing point for our article.

