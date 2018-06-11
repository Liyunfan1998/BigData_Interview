clc,clear
load gj3.txt
gj=zscore(gj3);
r=corrcoef(gj);
[vec1,lamda,rate]=pcacov(r);
contr=cumsum(rate);
f=repmat(sign(sum(vec1)),size(vec1,1),1);
vec2 =vec1.*f;
num=2;
df=gj*vec2(:,1:num);
tf=df*rate(1:num)/100;
[stf,ind]=sort(tf,'descend');
stf=stf';ind=ind';
