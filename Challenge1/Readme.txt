3 Yier application can be achieved using Cloud services as well as microservices, both approaches are shared below:

First:
I will be following below approach for setting up a 3 tier application on AWS Cloud Platform:

Create architecture for an 3-tier application and implement same as below:
  - Use RDS with Multi-AZ for DB tier which is hosted Private subnet.
  - Use AutoScaling Group for provision Application tier which is hosted Private subnet.
  - Use Load Balancer to route data from Web layer to Application layer which is hosted Private subnet.
  - User AutoScaling Group for provision Web tier which is hosted Private subnet.
  - Use Load Balancer for all traffic coming to Web tier which is hosted in Public subnet.

To secure the resources, i'll only allow traffic which is mandatory for application in Security Groups. Also attach WAF on External Load balancer which will help to protect web application against common web exploits.


--------------
Second:
A sample code for 3 tier application on Microservices architecture using Docker and K8s is placed in same repository.


Thanks,
Aditya
