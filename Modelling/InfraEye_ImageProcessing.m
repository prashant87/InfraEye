%% Flame
%% Output array from sensor 
% 24x32
Flame = [21 21 23 21 22 21 23 22 22 22 28 26 41 39 40 38 26 28 24 23 22 21 23 21 21 21 23 22 21 21 23 22; 
21 22 23 21 21 22 23 22 22 23 25 30 36 43 43 36 31 25 26 23 21 22 23 21 21 22 23 21 21 22 23 22; 
22 21 23 22 22 21 24 22 22 22 27 25 44 42 47 45 29 30 24 24 22 21 23 22 21 21 23 21 21 21 24 22;
21 21 23 21 21 22 23 22 22 23 24 29 38 49 50 43 36 26 26 23 21 22 23 22 21 22 23 21 21 22 23 22; 
21 21 23 22 22 21 23 22 22 22 25 25 46 47 57 55 33 35 25 24 22 21 23 22 22 21 23 22 21 21 23 22; 
21 21 23 22 21 22 23 22 22 23 24 27 39 55 62 54 43 29 27 23 22 23 23 22 21 22 23 22 21 22 23 22; 
21 21 23 22 22 21 23 22 22 22 25 24 47 51 71 70 39 42 25 24 22 22 23 22 21 21 23 21 21 21 23 22; 
21 21 22 22 21 22 23 22 22 23 25 26 39 60 77 70 56 34 28 24 22 23 23 22 21 22 23 22 21 22 23 22; 
21 21 23 21 22 22 23 22 22 22 25 24 47 55 91 94 52 54 26 25 23 22 23 22 21 21 24 22 22 21 23 22; 
21 22 23 22 21 22 23 22 22 23 24 25 41 65 99 95 77 43 30 24 22 23 23 22 22 22 23 22 21 23 23 22; 
21 21 23 22 22 21 24 22 23 22 25 25 47 61 126 152 76 79 28 27 23 23 24 22 22 21 24 22 23 22 24 22; 
21 22 23 22 22 22 24 23 23 24 25 26 42 71 161 159 137 62 35 26 23 24 24 23 22 23 24 23 23 24 24 24; 
22 22 24 23 23 23 25 24 24 24 27 27 48 68 224 273 145 137 32 29 24 24 24 23 22 22 24 22 22 22 24 24; 
22 23 24 22 23 23 25 24 24 25 29 28 47 79 234 281 223 111 43 30 29 25 24 23 22 23 23 23 22 23 24 23; 
22 22 24 23 23 23 25 24 25 28 38 47 58 79 235 242 212 157 52 52 42 42 26 24 23 22 24 22 22 21 23 22; 
22 23 24 23 23 23 25 24 27 29 50 48 60 82 186 244 190 154 62 53 50 45 32 24 22 23 23 22 21 22 23 22; 
23 22 25 23 23 23 25 24 28 38 51 53 59 69 167 204 193 138 65 58 53 52 37 29 22 22 24 22 22 21 23 22; 
22 23 24 24 23 24 25 24 31 35 52 53 59 66 148 200 178 140 64 61 55 53 40 30 22 23 23 22 21 22 23 22; 
23 22 24 23 23 23 25 24 28 39 50 51 56 57 94 107 129 70 62 57 53 50 40 30 23 22 24 22 22 22 23 22; 
22 23 24 23 23 23 25 23 30 35 50 50 52 56 65 84 64 75 55 55 50 50 39 29 22 23 23 23 21 22 23 22; 
22 22 24 23 23 23 25 23 27 35 49 49 50 50 54 52 54 51 52 50 50 48 37 28 23 22 23 22 22 21 23 22; 
22 23 24 23 23 24 24 23 27 30 48 48 49 50 52 52 50 52 51 50 47 46 34 28 22 23 23 22 21 22 23 21; 
22 22 25 23 23 23 24 23 25 28 41 42 47 46 50 48 48 47 48 45 42 38 31 25 23 21 24 22 22 21 23 22; 
22 23 25 23 22 23 24 23 24 25 38 39 42 44 45 46 43 45 43 42 37 37 28 25 23 23 23 23 21 22 23 22]

UpscaleFactor = 10
OutLength = UpscaleFactor*32 - UpscaleFactor
OutWidth = UpscaleFactor*24 - UpscaleFactor

% Mesh defined - 24x32
[X,Y] = meshgrid(0:UpscaleFactor:OutLength,0:UpscaleFactor:OutWidth);
% Mesh define - 220x300
[Xq,Yq] = meshgrid(0:1:OutLength - 1, 0:1:OutWidth - 1);
% Interpolation
FlameInterpolated = interp2(X,Y,Flame,Xq,Yq,'cubic');

% Creating figure
CreateFigure(X,Y,Flame,Xq,Yq,FlameInterpolated)

%% Hand
%% Output array from sensor 
% 24x32
Hand = [19 18 21 17 18 19 22 18 19 19 22 18 19 20 22 19 20 20 22 19 20 20 22 19 20 20 22 19 20 20 23 19; 
19 20 18 19 19 20 19 20 19 20 19 20 20 21 20 20 20 20 20 21 20 21 20 20 20 21 20 21 20 21 20 21; 
18 18 21 18 19 19 21 18 19 20 24 20 21 21 22 20 20 20 22 19 20 20 22 19 20 20 23 19 20 20 23 19; 
19 20 19 19 19 21 20 20 20 21 22 27 24 22 22 21 21 21 20 20 20 21 20 21 20 21 20 20 20 21 20 20; 
19 19 22 19 20 20 25 22 20 20 30 27 25 25 27 25 20 20 21 19 20 20 22 19 20 20 22 20 20 20 23 19; 
19 20 19 20 20 22 23 27 23 22 25 30 27 28 29 23 20 21 20 21 20 21 20 20 20 21 20 21 20 21 21 21; 
19 19 21 18 21 20 30 27 21 21 30 28 25 25 28 26 20 21 23 20 20 20 22 19 20 20 23 19 20 20 22 19; 
19 20 19 20 20 23 26 28 24 23 26 29 26 29 29 22 21 24 23 22 21 21 20 21 20 21 20 21 20 21 20 21; 
19 19 22 19 21 21 30 27 22 22 31 28 26 26 27 25 23 23 27 25 20 20 22 19 20 21 23 19 20 20 22 19; 
20 20 19 20 20 23 26 28 25 25 28 29 27 30 29 22 21 28 28 22 20 21 20 21 20 21 20 21 20 21 20 20; 
19 19 22 19 21 21 30 28 23 22 31 28 28 29 27 23 27 28 24 21 20 19 22 20 20 19 22 20 20 19 22 21; 
18 18 20 20 20 21 29 29 24 23 29 29 27 28 26 24 27 27 23 21 19 19 21 21 19 19 20 21 19 19 21 21; 
19 19 22 20 20 20 29 28 27 25 31 29 29 29 28 25 28 26 22 20 20 19 22 20 19 19 22 20 19 19 22 21; 
18 19 21 20 19 20 26 28 27 27 30 30 28 28 28 29 27 25 21 21 19 19 21 21 19 19 21 21 19 19 21 21; 
20 20 23 20 20 20 27 28 28 28 31 29 29 28 31 29 27 25 22 20 20 19 22 20 19 19 23 20 20 19 23 21; 
23 25 24 23 19 20 25 28 28 28 30 30 29 29 30 30 27 26 21 21 19 19 21 21 19 19 21 21 20 20 21 22; 
25 26 31 28 24 21 26 27 29 28 31 30 30 29 32 29 28 27 23 20 20 19 22 20 20 19 23 22 21 20 23 21; 
22 24 29 30 26 24 24 28 29 29 30 30 29 29 31 30 28 27 22 21 19 20 21 21 19 20 22 22 20 20 21 21; 
21 20 27 28 29 27 30 29 30 29 32 30 30 29 32 30 29 28 24 20 20 19 23 21 21 21 24 22 20 20 23 21; 
20 20 24 25 28 28 30 30 29 29 30 31 29 30 31 31 28 28 22 21 19 20 21 22 20 21 22 21 19 19 20 22; 
19 18 24 22 25 28 32 31 30 29 32 30 30 29 32 30 29 28 24 21 20 20 23 21 21 20 23 21 19 19 23 22; 
19 18 22 22 23 25 30 30 29 29 31 31 29 30 30 30 28 27 22 21 20 20 22 22 20 20 21 21 19 19 21 22; 
20 19 23 21 21 22 28 28 29 29 31 30 30 29 31 30 28 25 23 21 21 20 23 21 20 20 23 21 20 19 24 23; 
21 21 21 22 21 21 24 25 28 28 30 30 29 29 30 30 27 24 22 22 20 21 22 22 19 20 21 21 19 19 22 23 
]

UpscaleFactor = 10
OutLength = UpscaleFactor*32 - UpscaleFactor
OutWidth = UpscaleFactor*24 - UpscaleFactor

% Mesh defined - 24x32
[X,Y] = meshgrid(0:UpscaleFactor:OutLength,0:UpscaleFactor:OutWidth);
% Mesh define - 220x300
[Xq,Yq] = meshgrid(0:1:OutLength - 1, 0:1:OutWidth - 1);
% Interpolation
HandInterpolated = interp2(X,Y,Hand,Xq,Yq,'cubic');

% Creating figure
CreateFigure(X,Y,Hand,Xq,Yq,HandInterpolated)
