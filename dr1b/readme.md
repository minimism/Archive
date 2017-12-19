# dr1.b

*dr1.b* is a development of dr1.a following the latter’s performance debut. The advances over *dr1.a* are as follows:

* _sync oscillator_ is now enveloped (sine shape) to remove the problem discontinuities;
* Oscillator frequencies are no longer totally independent - the ratio between the harmonic and the base oscillator remains fixed so that varying the base frequency will also affect the harmonic frequency.


Source layout is the same as for the other projects; there is a code generator written in ruby to generate the pitch-increment lookup table and the wavetables themselves, the time-critical code is done as straight-line as possible.
