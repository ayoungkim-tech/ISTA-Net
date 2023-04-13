img_num = "10";
for i = 1:31
    ch_image = squeeze(hyper_image(:,:,i));
    ch_image = ch_image.*255;
    file_name = img_num+"\"+num2str(i,'%02d')+".mat"
    save(file_name, 'ch_image')
end

%% For PSNR Calculation of the result:
% psnr(gt_image./255, rec_image./255)