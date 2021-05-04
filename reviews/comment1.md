Cassio Amorim, CJS Inc., SciGen.Report, Kyoto, Japan

Very informative pre-print. I have 3 points to raise that the authors
may or may not find useful, 2 suggestions and 1 comment, which the
authors may adopt or ignore as they see fit.


1. Regarding Fig. 1, I think the left side would be better if at least
   vaguely structured. I believe we all acknowledge that science is
   messy, but finding structures and patterns in this mess is
   research. So, instead of a cloud with keywords, I would take some
   kind of blocks connected somehow, and the arrow with "sharing"
   leaving the whole set. Let me try to text sketch the whole image I
   have below, as a rough structure. I do not understand what "Stats"
   indicates, though, so I'm skipping it. Also, I'm avoiding arrows
   for I assume directions may vary on each case, e.g., data derives
   from code/model (ab initio) or code derives from data (analysis)?
   

/ Data /---/ Code, models, nb / |
             |                                  |---------Sharing-------->
             |                                  |
     / Results /                           |

2. I appreciate the impact of the conclusion "CODECHECK works" and
   would even finish with a period for impact myself, but I'm not sure
   the trailing explanation sustains it. It is one thing when Richard
   Dawkins says "[Science] works. Planes fly, cars drive, computers
   compute." It does not hit me the same with "CODECHECK works. We
   made certificates." I'd expect concrete consequences there (and I
   believe there are). However, it is not to say there is any problem
   in the conclusion itself. I just think something more on the lines
   of "CODECHECK works. From AI to pandemic modeling, we verify
   meaningful codes and certify their reproducibility (amidst the
   gambling chaos we live in)." In other words, spelling out the
   impact of "we have created a considerable number of certificates"
   (what kind? what for?) would make it better in my opinion. The
   word-crafting art there, of course, relies on the authors' taste.
   

3. Just a  (personal) comment about the mention of bitwise
   reproducibility in the "auditable research" section. I personally
   have a hard time understanding the concept. Considering float point
   arithmetics implementation (e.g.,
   https://docs.nvidia.com/cuda/floating-point/index.html), one would
   need the same code, data *and* hardware+software. Such demand is so
   punctual that I fail to see how it is even feasible at
   scale. Certainly, it makes the strictest definition of
   reproducibility, just like an ideal gas is the "strictest" gas, but
   as I do not expect even Hellilum to behave as point-like particles
   always, I wouldn't expect such a degree of reproducibility from
   every research (notably not from HPC). But again, just my view on
   the matter, the authors may or may not want to add a few words to
   the auditable research session for that, whichever the case being
   comprehensible.
   
Competing Interests: I have discussed possible collaboration with
Daniel Nust before, yet unrealized on the date of this comment
submission

