function plot2file()

  %ALG 1
  algname1 = 'ALG1';
  it1      = [1   2   3   4   5];
  times1   = [1.0 2.3 4.5 7.1 10.4];
  values1  = [100 77  66  62  55];
  bounds1  = [11  15  19  23  33];
 
  %ALG 2
  algname2 = 'ALG2';
  it2      = [1   2   3   ];
  times2   = [2.0 3.3 5.5 ];
  values2  = [90 63  51];
  bounds2  = [11  23  50];

  plot2file_data(algname1,it1,times1,values1,bounds1)
  plot2file_data(algname2,it2,times2,values2,bounds2)
  
end

function plot2file_data(alg,it,times,values,bounds)
  texfid = fopen(['./',alg,'.data'], 'w');  
  fprintf(texfid,'IT     T      V      B    \n');
  for i=1:numel(it)
    fprintf(texfid,[num2str(it(i)),' ',num2str(times(i)),' ',num2str(values(i)),' ',num2str(bounds(i)),' \n']);  
  end
end
