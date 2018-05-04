function verticalSeam = find_vertical_seam(m)
[r,c]=size(m);
verticalSeam=zeros(r,1);
[~,verticalSeam(r,1)]=min(m(r,:));
for i = r-1:-1:1
   if verticalSeam(i+1,1)-1<1 
      [~,b]=min([m(i,verticalSeam(i+1,1)),m(i,verticalSeam(i+1,1)+1)]);
      if b==1
        verticalSeam(i,1)=verticalSeam(i+1,1);
      elseif b==2
          verticalSeam(i,1)=verticalSeam(i+1,1)+1;
      end
   elseif verticalSeam(i+1,1)+1>c 
      [~,b]=min([m(i,verticalSeam(i+1,1)-1),m(i,verticalSeam(i+1,1))]);
      if b==1
           verticalSeam(i,1)=verticalSeam(i+1,1)-1;
      elseif b==2
           verticalSeam(i,1)=verticalSeam(i+1,1);
      end
   else
      [~,b]=min([m(i,verticalSeam(i+1,1)-1),m(i,verticalSeam(i+1,1)),m(i,verticalSeam(i+1,1)+1)]);
      if b==1
        verticalSeam(i,1)=verticalSeam(i+1,1)-1;
      elseif b==2
          verticalSeam(i,1)=verticalSeam(i+1,1);
      elseif b==3
          verticalSeam(i,1)=verticalSeam(i+1,1)+1;
      end
   end
end
end