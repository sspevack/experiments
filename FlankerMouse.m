
try  
% clear and close all
close all; 
clc;
sca;

%Set up Screen 
PsychDefaultSetup(2);
Screen_Number = max(Screen('Screens'));
Black = BlackIndex(Screen_Number);
White = WhiteIndex(Screen_Number);
[Window, Window_Rect] = PsychImaging('OpenWindow', Screen_Number, White);

%Stimuli Positions
Stimuli_Positions = StimuliPositions(Window_Rect); 

%Stimuli
Conditions = {'CongRight.jpeg', 'CongLeft.jpeg', 'IncongRight.jpeg', 'IncongLeft.jpeg' };
Correct_Responces = {'Right','Left','Right', 'Left'};
Feedback_Images = {'Wrong.png','Correct.png'};

%Create Instruction Screen
Instructions = 'Welcome to the Flanker Task! \n \n In this task you will see several arrows.\n Please look at the central arrow. \n If it points to the left, press Q. \n If it points to thr right, press P.';
DrawFormattedText(Window, Instructions, 'center', 'center', Black);
Screen('Flip', Window);
pause(.5)
KbWait();  

%Let's go through 10 trials!
for trials = 1:10

%Select Condition
Condition_Number = randsample(4,1); 
Condition = Conditions{Condition_Number};
Correct_Responce = Correct_Responces{Condition_Number};

%Display Fixation Cross
ShowStimuli('Cross.jpeg', Stimuli_Positions, Window)
pause(.3)

%Display Stimuli
ShowStimuli(Condition, Stimuli_Positions, Window)
Responce = LeftRightKey;

%Show Feedback
Feedback = Feedback_Images{strcmp(Responce,Correct_Responce)+1}
ShowStimuli(Feedback, Stimuli_Positions, Window)
pause(1)

end

%Create End Screen
End_Screen = 'You are now done with the flanker task';
DrawFormattedText(Window, End_Screen, 'center', 'center', Black);
Screen('Flip', Window);
pause(.5)
KbWait();  


catch ME 
end

sca 