clear;
close all;
clc;

sl = load('srLoc.txt');
sl = sl(:,4);
slSum = sum(sl)

rl = load('rrLoc.txt');
rl = rl(:,4);
rlSum=sum(rl)

slng = load('sLoc-no-gps.txt');
slng = slng(:,4);
slngSum = sum(slng)

rlng = load('rLoc-no-gps.txt');
rlng = rlng(:,4);
rlngSum=sum(rlng)

alng = load('ML-area.txt');
alng = alng(:,4);
alngSum=sum(alng)

figure('Position',[440 378 560 620/3]);
bar([slSum slngSum ; rlSum rlngSum; 0 alngSum ; 0 11 ] );
ylabel('Joule');
labels = {'SL','ODML' , 'AML' , 'OML'};
set(gca , 'xticklabel' , labels);
set(gca , 'fontsize' , 16);
set(gca , 'xLim', [0.5 4.5])


figure('Position',[440 378 560 620/3]);
bar([length(sl) length(rl) length(alng) 1  ] );
ylabel('Number of queries');
labels = {'SL','ODML' , 'AML' , 'OML'};
set(gca , 'xticklabel' , labels);
set(gca , 'fontsize' , 16);
set(gca , 'xLim', [0.5 4.5])