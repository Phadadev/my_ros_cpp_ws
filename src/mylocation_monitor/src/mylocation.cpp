#include<vector>
#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "mylocation_monitor/MyLandmarkDistance.h"


using mylocation_monitor::MyLandmarkDistance;
using std::vector;
using std::string;

class Landmark{
    public:
    Landmark(string name, double x, double y)
    : name(name), x(x), y(y) {}
    string name;
    double x;
    double y;
};

class LandmarkMonitor {
    public:
    LandmarkMonitor(): landmarks_() {
        InitLandmarks();
    }

void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg){
  double x = msg->pose.pose.position.x;
  double y = msg->pose.pose.position.y;
  MyLandmarkDistance ld = FindClosest(x,y);
  ROS_INFO("name: %s, d: %f", ld.name.c_str(), ld.distance);

  // ROS_DEBUG("x: %f, y : %f", x, y);
//   ROS_INFO("x: %f, y : %f", x, y);
  // ROS_WARN("x: %f, y : %f", x, y);
  // ROS_ERROR("x: %f, y : %f", x, y);
  // ROS_FATAL("x: %f, y : %f", x, y);
}   
private:
    vector<Landmark> landmarks_;

    MyLandmarkDistance FindClosest(double x ,double y){
        MyLandmarkDistance result;
        result.distance = -1;

        for(size_t i =0;i < landmarks_.size();++i){
            const Landmark &landmark = landmarks_[i];
            double xd = landmark.x -x;
            double yd = landmark.y -y;
            double distance = sqrt(xd*xd+yd*yd);

        if(result.distance < 0 || distance < result.distance){
            result.name = landmark.name;
            result.distance = distance;
        }
        }
        return result;
    }

    void InitLandmarks(){
        landmarks_.push_back(Landmark("Cube",0.31,-0.99));
        landmarks_.push_back(Landmark("Dumpster",0.11,-2.42));
        landmarks_.push_back(Landmark("Cylinder",-1.14,-2.88));
        landmarks_.push_back(Landmark("Barrier",-2.59,-0.83));
        landmarks_.push_back(Landmark("Bookshelf",-0.09,0.53));
        }
};

int main(int argc, char** argv){
  ros::init(argc,argv,"mylocation");
  ros::NodeHandle nh;
  LandmarkMonitor monitor;
  ros::Subscriber sub = nh.subscribe("odom",10, &LandmarkMonitor::OdomCallback, &monitor);
  ros::spin();
  return 0;
}