% Reading image and storing it on an array:
fig1 = imread( 'faces.jpg' );

% Showing the stored image:
imshow(fig1);

% Showing the pixel region of the image:
impixelregion

% changing the color of the black word into RED:

% Looping on the image matrix:
for r = 1:150
    for c = 1:300
        % Storing a new verion image after the editing process:
        fig2(r,c,1:3) = fig1(r,c,1:3) ;
        % Getting the black color in the image:
        if( fig1(r,c,1:3) <= 45 )
            % Change them into RED: 
            fig2(r,c,1:3) = [255, 0, 0] ;
        end
    end
end

% Showing the image after the editing process:
imshow(fig2);

% Drawing a blue borders to the image:
for r = 1:150
    for c = 1:300
        if( r==1 || r==2 || r==149 || r==150 || c==1 || c==2 || c==299 || c==300 )
        fig2(r,c,1:3) = [0, 0, 255] ;
        end
    end
end

% Showing the image after the editing process:
imshow(fig2);

% Saving the new image:
imwrite(fig2,'faces2.jpg')

