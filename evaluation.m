clear;
close all;
clc;
%%
sl = load('srLoc.txt');
sl = sl(:,4);
slSum = sum(sl);

rl = load('rrLoc.txt');
rl = rl(:,4);
rlSum=sum(rl);

slng = load('sLoc-no-gps.txt');
slng = slng(:,4);
slngSum = sum(slng);

rlng = load('rLoc-no-gps.txt');
rlng = rlng(:,4);
rlngSum=sum(rlng);

alng = load('ML-area.txt');
alng = alng(:,4);
alngSum=sum(alng);
%%
%ploting 
figure('Position',[440 378 560 620/3]);
bar([slSum slngSum ; rlSum rlngSum; 0 alngSum ; 0 11 ] );
ylabel('Joule');
labels = {'SL','ODML' , 'AML' , 'OML'};
set(gca , 'xticklabel' , labels);
set(gca , 'fontsize' , 20);
set(gca , 'xLim', [0.5 4.5])

figure('Position',[440 378 560 620/3]);
bar([length(sl) length(rl) length(alng) 1  ] );
ylabel('Number of queries');
labels = {'SL','ODML' , 'AML' , 'OML'};
set(gca , 'xticklabel' , labels);
set(gca , 'fontsize' , 20);
set(gca , 'xLim', [0.5 4.5])
%%
% statistics 
fprintf(['SL: Number of queries is ' num2str( length(sl) ) ', consumed energy is ' num2str(slSum) '. energy consumed without GPS ' num2str(slngSum) '\n']);
fprintf(['ODMLL: Number of queries is ' num2str( length(rl) ) ', consumed energy is ' num2str(rlSum) '. energy consumed without GPS ' num2str(rlngSum) '\n']);
fprintf(['AML: Number of queries is ' num2str( length(alng) ) ', consumed energy is ' num2str(alngSum) '\n']);