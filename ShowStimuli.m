function [ output_args ] = ShowStimuli( image, position, Window)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

Cross_Texture = Screen('MakeTexture', Window, imread(image));
Screen('DrawTexture', Window, Cross_Texture, [],position, 0);
Screen('Flip', Window);


end

