function [ Stimuli_Positions ] = StimuliPositions( Window_Rect )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

%Get Screen Positions  
Left = Window_Rect(1);
Top  = Window_Rect(2);
Right = Window_Rect(3);
Bottom = Window_Rect(4); 

%Get Stimuli Positions 
Stimuli_Left = Left + ((Right-Left)*.3);
Stimuli_Right = Right - ((Right-Left)*.3);
Stimuli_Top = (Top + ((Bottom-Top)*.5))-((Stimuli_Right-Stimuli_Left)*.5);
Stimuli_Bottom = Stimuli_Top + (Stimuli_Right-Stimuli_Left);

Stimuli_Positions = [Stimuli_Left Stimuli_Top Stimuli_Right Stimuli_Bottom]; 


end

