%function CutImageRGB
%切割保留原RGB格式
%for k=1:1:52
  k=25;
    name1=sprintf('picture%d.bmp',k);
    A= imread(name1);
    %A=imread('hanmoumou_BP_R_1_1.bmp');
    %B=ImGray(A);
    E=zeros(250,358,3);
    for i=1:250         %202:679
        for j=1:358     %152:610
%             E(i,j,:)=A(i+251,j+201,:);
              E(i,j,:)=A(i+201,j+161,:);
        end
    end
    E=uint8(E);
    figure(4);
    subplot(1,2,1);
    imshow(A);title('原始图像');
    subplot(1,2,2);
    imshow(E);title('切割后的图片');
    %name2=sprintf('CutHMM_bp_R_1_%d.bmp',k);
    direct=[cd,'\07_Cut_BP_L_mark\'];
    imwrite(E,[direct, 'CutMMM_bp_mark_0_',sprintf('%d',k),'.bmp']);
%end