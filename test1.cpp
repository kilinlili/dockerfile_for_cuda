#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/core/cuda.hpp>
#include <opencv2/cudaimgproc.hpp>
#include <opencv2/highgui.hpp>

int main()
{
    std::cout << cv::getBuildInformation() << std::endl;
    cv::cuda::printShortCudaDeviceInfo(cv::cuda::getDevice());

    cv::Mat SorceImage = cv::imread("lena.jpg");
    //cv::namedWindow("OpenCV+CUDA", cv::WINDOW_AUTOSIZE);
    //cv::imshow("OpenCV+CUDA", SorceImage);
    //OK




    cv::cuda::GpuMat GPU_srcImage(SorceImage);
    cv::cuda::GpuMat GPU_dstImage;
    cv::Mat imgDst;


    GPU_srcImage.upload(SorceImage);
    cv::cuda::cvtColor(GPU_srcImage, GPU_dstImage, cv::COLOR_BGR2GRAY);
    GPU_dstImage.download(imgDst);
    

    //サンプルプログラムが無茶苦茶すぎてそりゃできないよなと
    cv::namedWindow("GPU1", cv::WINDOW_AUTOSIZE | cv::WINDOW_OPENGL);
    //cv::imshow("GPU1", GPU_dstImage);
    cv::imshow("GPU1", imgDst);
    cv::waitKey(0);

return 0;
}
