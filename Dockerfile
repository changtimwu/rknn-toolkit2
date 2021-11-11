FROM ubuntu:18.04                                                                                     
RUN apt update && apt install python3 python3-pip libprotobuf10 -y                                    
RUN pip3 install --upgrade pip                                                                        
COPY examples /root/rknn-toolkit2/examples                                                            
COPY packages /root/rknn-toolkit2/packages                                                            
RUN ls /root/rknn-toolkit2/                                                                           
WORKDIR /root/rknn-toolkit2/packages                                                                  
RUN pip3 install numpy                                                                                
RUN pip3 install rknn_toolkit2-1.1.1_5c458c6-cp36-cp36m-linux_x86_64.whl                              
RUN pip3 install opencv-python-headless 
