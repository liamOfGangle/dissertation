rosinit
pause(10);

jointPub = rospublisher('/joint_states','/sensor_msgs/JointState.msg');

msg = rosmessage(jointPub);
% Unsure of this line 
% msg.Data = '';

send(jointPub,msg);

pause(10);
rosshutdown