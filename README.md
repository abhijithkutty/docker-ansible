# docker-ansible

**1) **Prerequisites:****

   Install docker and docker compose packages.

**2) **Run below docker-compose commands to build and run the Ansible master and client container.****

    docker-compose build
    docker-compose up -d
   
   ![image](https://user-images.githubusercontent.com/52773558/172063612-4f72350f-bc97-4887-a00c-d01df4486088.png)


**3) **Ensure that Ansible master and remote host containers are running.****
   
   >docker ps

**4) **Connect to master container.****

   >docker exec -it ansible bash
   
   

**5) **Run Ansible Adhoc command.****
    
   >ansible host -m ping
   
   ![image](https://user-images.githubusercontent.com/52773558/172063778-5f900e4f-072a-4b32-892d-dac48d696cae.png)
   
**6) If ping is failing, connect to managed host and restart ssh service.**
    
    docker exec -it remote-host bash
    service ssh restart
