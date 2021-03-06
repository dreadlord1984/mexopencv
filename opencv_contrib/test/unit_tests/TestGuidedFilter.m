classdef TestGuidedFilter
    %TestGuidedFilter

    properties (Constant)
        im = fullfile(mexopencv.root(),'test','lena.jpg');
    end

    methods (Static)
        function test_1
            img = imread(TestGuidedFilter.im);
            filt = cv.GuidedFilter(img, 'Radius',5);
            dst = filt.filter(img);
            validateattributes(dst, {class(img)}, {'size',size(img)});
        end

        function test_2
            img = imread(TestGuidedFilter.im);
            dst = cv.GuidedFilter.guidedFilter(img, img, 'Radius',5);
            validateattributes(dst, {class(img)}, {'size',size(img)});
        end
    end

end
