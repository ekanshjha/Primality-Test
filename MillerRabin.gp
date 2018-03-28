iscarmichael(n)={ \\input: positive integer n > 1
my(a=0,k=100); \\returns 1, if n is a Carmichael number with probability 1-2^-k
if(n%2==0||ispseudoprime(n)==1,return(0));
for(t=1,k,a=random(n-3)+2;if(lift(Mod(a,n)^(n-1))<>1&&gcd(a,n)==1,return(0)));
return(1)
};
