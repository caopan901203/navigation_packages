
Configuration
========================================

Botanbot sim is good reference to see how it is possible to configure vox_nav for your custom robot.
Be aware that at the moment we only cover Ackerman type robot. 
Although it is possible to configure MPC Controller's params, such that it works for 
Diff-Drive robots, the primary model is aimed for Ackerman type robots.

Please see botanbot_sim in this link; https://github.com/jediofgever/botanbot_sim

botanbot is a basic Ackermann type robot with all essential sensors(GPS, LIDAR, CAMERA, IMU). 
botanbot_bringup package includes sample parameters and launch files to run vox_nav.

Important nodes of vox_nav are; conroller_node, map_server_node, planning_node. 

parameters for these nodes are more or less as following;

.. code-block:: yaml

   vox_nav_planner_server_rclcpp_node:
      ros__parameters:
         planner_plugin: "SE3Planner"                  # other options: "SE2Planner", "SE3Planner"
         expected_planner_frequency: 10.0
         SE2Planner:
            plugin: "vox_nav_planning::SE2Planner"
            planner_name: "PRMstar"                   # PRMstar,LazyPRMstar,RRTstar,RRTsharp,RRTXstatic,InformedRRTstar,BITstar, 
            interpolation_parameter: 25               # ABITstar,AITstar,CForest,LBTRRT,SST,TRRT,SPARS,SPARStwo,FMT,AnytimePathShortening
            planner_timeout: 15.0
            octomap_topic: "octomap"
            octomap_voxel_size: 0.2
            se2_space: "SE2"                           # "DUBINS","REEDS", "SE2" ### PS. Use DUBINS OR REEDS for Ackermann
            state_space_boundries:
            minx: -50.0
            maxx: 50.0
            miny: -50.0
            maxy: 50.0
            minyaw: -3.14
            maxyaw: 3.14
            robot_body_dimens:
            x: 1.5
            y: 1.0
            z: 0.4
         SE3Planner:
            plugin: "vox_nav_planning::SE3Planner"
            planner_name: "CForest"                   # PRMstar,LazyPRMstar,RRTstar,RRTsharp,RRTXstatic,InformedRRTstar,BITstar, 
            interpolation_parameter: 25               # ABITstar,AITstar,CForest,LBTRRT,SST,TRRT,SPARS,SPARStwo,FMT,AnytimePathShortening
            planner_timeout: 15.0
            octomap_topic: "octomap"
            octomap_voxel_size: 0.2
            state_space_boundries:
            minx: -50.0
            maxx: 50.0
            miny: -50.0
            maxy: 50.0
            minz: -2.0
            maxz: 12.0
            robot_body_dimens:
            x: 1.0
            y: 1.0
            z: 0.2

   vox_nav_controller_server_rclcpp_node:
      ros__parameters:
         controller_plugin: "MPCControllerROS"                                   # other options: non
         controller_frequency: 15.0
         MPCControllerROS:
            plugin: "mpc_controller::MPCControllerROS"
            N: 8                                                                 # timesteps in MPC Horizon
            DT: 0.2                                                              # discretization time between timesteps(s)
            L_F: 0.66                                                            # distance from CoG to front axle(m)
            L_R: 0.66                                                            # distance from CoG to rear axle(m)
            V_MIN: -1.0                                                          # min / max velocity constraint(m / s)
            V_MAX: 1.0
            A_MIN: -1.0                                                          # min / max acceleration constraint(m / s ^ 2)
            A_MAX: 1.0
            DF_MIN: -1.5                                                         # min / max front steer angle constraint(rad)
            DF_MAX: 1.5
            A_DOT_MIN: -1.0                                                      # min / max jerk constraint(m / s ^ 3)
            A_DOT_MAX: 1.0
            DF_DOT_MIN: -0.8                                                     # min / max front steer angle rate constraint(rad / s)
            DF_DOT_MAX: 0.8
            Q: [10.0, 10.0, 0.1, 0.1]                                            # weights on x, y, psi, and v.
            R: [10.0, 100.0]                                                     # weights on jerk and slew rate(steering angle derivative)
            debug_mode: False                                                    # enable/disable debug messages
            params_configured: True

   vox_nav_map_server_rclcpp_node:
      ros__parameters:
         pcd_map_filename: /home/atas/colcon_ws/src/botanbot_sim/botanbot_bringup/maps/uneven_world.pcd
         pcd_map_downsample_voxel_size: 0.1                                        # Set to smaller if you do not want downsample
         pcd_map_transform:                                                        # Apply an optional rigid-body transrom to pcd file
            translation:
            x: 0.0
            y: 0.0
            z: 0.0 #1.0
            rotation:                                                               #intrinsic rotation X-Y-Z (r-p-y)sequence
            r: 0.0 #3.14
            p: 0.0 #1.57
            y: 0.0 #1.57
         apply_filters: False # Mostly for noise removal
         remove_outlier_mean_K: 50
         remove_outlier_stddev_threshold: 0.1
         remove_outlier_radius_search: 0.1
         remove_outlier_min_neighbors_in_radius: 1
         # COST REGRESSION CRITICS AND PARAMS
         cell_radius: 0.8                                                         # Works as resolution of cost regression onto map
         max_allowed_tilt: 40.0                                                   # 1st Cost critic Any angle higher than this is marked as NON-traversable
         max_allowed_point_deviation: 0.2                                         # 2nd Cost critic Point deviation from plane, this could be viewed as roughness of each cell 
         max_allowed_energy_gap: 0.2                                              # 3rd Cost critic Max Energy in each cell, this is detemined by max height differnce between edge points of cell
         node_elevation_distance: 0.5                                             # According to cell_radius, cell centers are sampled from original point cloud map, they are elevated from the original cloud
         plane_fit_threshold: 0.2                                                 # when fitting a flan to each cell, a plane_fit_threshold is considered from plane fitting f PCL
         robot_mass: 0.1                                                          # approximate robot mass considering cell_radius
         average_speed: 1.0                                                       # average robot speed(m/s) when calcuating kinetic energy m = 0.5 * (m * pow(v,2))
         include_elevated_surfel_centroids: true                                      # should cell(node) centers be included in ap ? , they will apear as yellow
         cost_critic_weights: [0.6, 0.2, 0.2]                                     # Give weight to each cost critic wen calculating final cost
         # PCD MAP IS TRANSLATED TO OCTOMAP TO BE USED BY PLANNER
         octomap_voxel_size: 0.2
         octomap_publish_frequency: 1
         publish_octomap_as_pointcloud: true
         publish_octomap_markers: true
         octomap_publish_topic_name: "octomap"                                    # octomap_msgs::msg::Octomap type of message topic name
         octomap_point_cloud_publish_topic: "octomap_pointcloud"                  # sensor_msgs::msg::PoinCloud2 that represents octomap
         map_frame_id: "map"
         utm_frame_id: "utm"
         yaw_offset: 1.57                                                         # see navsat_transform_node from robot_localization, this offset is needed to recorrect orientation of static map
         map_coordinates:
            latitude: 49.89999996757017
            longitude: 8.899999997371747
            altitude: 1.8
            quaternion:
            x: -0.0001960611448920198
            y: -0.003682083159658604
            z: 4.672499893387009e-05
            w: 0.9999932007970892



vox_nav's skeleton is made by following ROS2 nodes; 

Some highlights of the fetaures for this nodes are as follows.

**1. vox_nav_planner_server_rclcpp_node**

You can select an available planner plugin(SE2Planner or SE3Planner), be sure to see through the parameters. 
SE2Planner can be configured such that kinematic constrains
of ackemann robots are respected. e.g select REEDS OR DUBINS spaces.
The planner plugins are interfaced with OMPL. Many of OMPL planners could be selected. 

The planners are Sampling-Based, they utilize a octomap of environment in order to perform collision checks.
You also need to provide a 3D volume box that represents body of your robot. 
see the robot_body_dimens params for that.

**2. vox_nav_controller_server_rclcpp_node**

TODO


**3. vox_nav_map_server_rclcpp_node**
 
You will need to provide a pre-built pcd map of environment for this node to consume. 
This map needs to have a datum of its origin(GPS coordinates and IMU acquired absolute heading). 
This is basically the pose where you initialize your SLAM algorithm to build your map. 
This is needed in order to geo-reference your map.
vox_nav_openvslam can help you with building such maps, these is also a helper node to dump map meta information including datum.
Refer to SLAM section to see more details. 
With this information the node is able to grab your pcd map and georeference it utilizing robot_localization package. 
The pcd map is converted to an octomap and published with configured voxel sizes and topic names. 
You should visualize topics in RVIZ, in order to make sure the map looks as expected.
visualizing as markers usually lags RVIZ, instead we recomend you to visualize pointcloud topic of octomap.