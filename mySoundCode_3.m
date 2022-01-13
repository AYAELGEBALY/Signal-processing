%%
%start
clear
clc
close all
%%
% first we have to read our sound file and save it's two channels in a matrix
[sound_matrix,fs]=audioread('numbers_and_vowels.m4a'); % fs variable will store aur fraquansy
first_channel= sound_matrix(:,1); % extraction of channel 1 

%%
%our numbers and vowels variables after determine and separate them  manually
number1 = first_channel(5.77e4:7.623e4);
nunber2 = first_channel(1.304e5:1.472e5);
a= first_channel(1.962e5:2.128e5);
number3 = first_channel(2.584e5:2.786e5);
number4 = first_channel(3.317e5:3.486e5);
e=first_channel(4.023e5:4.187e5);
number5 = first_channel(4.657e5:4.999e5);
i=first_channel(5.378e5:5.56e5);
number6 = first_channel(5.955e5:6.245e5);
number7 = first_channel(6.645e5:6.944e5);
o=first_channel(7.372e5:7.523e5);
number8 = first_channel(8.052e5:8.302e5);
number9 = first_channel(8.732e5:8.988e5);
u=first_channel(9.452e5:9.607e5);
%%
%our separated vectors

numbers= [number1; nunber2; number3; number4; number5; number6; number7; number8; number9];
vowels= [a; e; i; o; u];

%% 
%subplot

subplot(3,1,1),plot(first_channel),title('Numbers & Vowels');
subplot(3,1,2),plot(numbers),title('Numbers');
subplot(3,1,3),plot(vowels);title('Vowels')