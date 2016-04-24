function [ faces ] = retrieveCubePoints(projMatrix, position)
%% Function takes projectionMatrix and calculates the position of the faces
faces = createCube(1, position);
for i=1:6
    for j=1:5
        face = [faces(i,j,1); faces(i,j,2); faces(i,j,3); 1];
        face = projMatrix*face;
        face = face/face(3);
        faces(i,j,:) = face;
    end
end
end

