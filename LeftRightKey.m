function [ Responce ] = LeftRightKey( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%Set Up Key Presses
Left_Key = KbName('q');
Right_Key = KbName('p');

Responce = 'False';
while strcmp(Responce, 'False')
[Is_Key_Down, Secs, Key_Code] = KbCheck;
if Key_Code(Left_Key)
    Responce = 'Left';
elseif Key_Code(Right_Key)
    Responce = 'Right';
end

end

