% slCharacterEncoding('UTF-8');
clc, clear
load gj4.txt
%gj(:,[3:6])=[];
gj=zscore(gj4);
y=pdist(gj);
z=linkage(y,'average');
h=dendrogram(z);
set(h,'Color','k','LineWidth',1.3)
for k=3:5
    fprintf('���ֳ�%d��Ľ������:\n',k)
    T=cluster(z,'maxclust',k);
    for i=1:k
        tm=find(T==i);
        tm=reshape(tm,1,length(tm));
        fprintf('��%d�����%s\n',i,int2str(tm));
    end
    if k==5
        break
    end
    fprintf('***************************************************************\n'); 
end