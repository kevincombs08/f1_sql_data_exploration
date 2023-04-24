   
-- Now with all the tables in and formatted it's time to do the fun part, data exploration! We'll start off simple - let's look at the final standings of last season!
   
![Screen Shot 2023-04-24 at 3 27 13 PM](https://user-images.githubusercontent.com/126277909/234108891-a1523cdf-350d-4c13-b2e8-858d473f5469.png)

![Screen Shot 2023-04-24 at 3 15 07 PM](https://user-images.githubusercontent.com/126277909/234106203-5ff8da07-562d-44f9-9a6d-b5664f643bbb.png)
    
-- How about the all time points leader?

![Screen Shot 2023-04-24 at 3 27 26 PM](https://user-images.githubusercontent.com/126277909/234108949-0e2df433-dca8-4a6b-9da4-79ea31dd8c12.png)

![Screen Shot 2023-04-24 at 3 19 54 PM](https://user-images.githubusercontent.com/126277909/234107353-200712a5-bacf-499d-b8a8-342e87def262.png)
   
-- How about the driver that's completed the most laps?

![Screen Shot 2023-04-24 at 3 27 58 PM](https://user-images.githubusercontent.com/126277909/234109092-305adc1c-7f9d-4dd7-9a17-a6726beb4034.png)

![Screen Shot 2023-04-24 at 3 20 34 PM](https://user-images.githubusercontent.com/126277909/234107473-5765fe31-b14a-4229-9dff-00d112bc038c.png)
   
-- How about all-time leading constructors in points/laps? Ferrari is king, right?

![Screen Shot 2023-04-24 at 3 28 16 PM](https://user-images.githubusercontent.com/126277909/234109178-2c33a724-e456-4b1f-8b4a-748b371cb1e3.png)

![Screen Shot 2023-04-24 at 3 21 18 PM](https://user-images.githubusercontent.com/126277909/234107639-9545d229-a3d8-445c-8bd3-6690f7cd7d2a.png)

-- How about the circuits that've seen the most laps? 

![Screen Shot 2023-04-24 at 3 28 32 PM](https://user-images.githubusercontent.com/126277909/234109230-a59298cc-bbda-46e0-8b9c-dce106113fbf.png)

![Screen Shot 2023-04-24 at 3 21 43 PM](https://user-images.githubusercontent.com/126277909/234107716-bbc6a33d-44f0-458e-81ee-12d3394544c7.png)

-- How about fastest lap time per circuit?

![Screen Shot 2023-04-24 at 3 29 01 PM](https://user-images.githubusercontent.com/126277909/234109312-e27d956f-7c76-4bd4-8fd5-9a2fc8ae1822.png)

![Screen Shot 2023-04-24 at 3 22 03 PM](https://user-images.githubusercontent.com/126277909/234107787-041869f3-1312-4a1c-a908-864868e33d46.png)

-- With the Saudi Arabian Grand Prix just happening, I wanted a reminder on what happened last year and how the table was looking. Looks like Ferrari were off to a hot start!

![Screen Shot 2023-04-24 at 3 29 11 PM](https://user-images.githubusercontent.com/126277909/234109351-a9e1d590-fafb-47c8-be2f-4a83faf039d0.png)

![Screen Shot 2023-04-24 at 3 22 23 PM](https://user-images.githubusercontent.com/126277909/234107897-2a824dfc-06b6-4a73-8462-01e19b6b0c97.png)
    
-- Now let's add in drivers with constructors as well as grid start and final position so we can get a 1,000 ft view of what happened during the race. Tough race for Fernando! Started P7 ended with a Water Cooling fault. 

![Screen Shot 2023-04-24 at 3 29 33 PM](https://user-images.githubusercontent.com/126277909/234109446-fcf54b4c-3139-4596-9759-0c7d952da9ad.png)

![Screen Shot 2023-04-24 at 3 23 10 PM](https://user-images.githubusercontent.com/126277909/234108037-55041718-3bec-46c3-909a-daecae4500a0.png)

-- Now, lets add another CTE to get the points total per constructor for the weekend in Saudi Arabia. Red Bull caught up to Ferrari after a hot week 1 in Bahrain!

![Screen Shot 2023-04-24 at 3 29 58 PM](https://user-images.githubusercontent.com/126277909/234109535-73b24e68-5f07-42a1-bbc9-1443f0a6ae5c.png)

![Screen Shot 2023-04-24 at 3 23 31 PM](https://user-images.githubusercontent.com/126277909/234108112-ec3874ed-7cd3-456d-b074-52a62ed831ba.png)

-- Next I wanted to get a full view of the grid for all the races. I wanted to see starting positions, ending positions, and the average movement during the race. Additionally, I wanted to showcase and add 
-- a rank window function to get a clean view of the final racing order even though it's also available via END_AVG. :)

![Screen Shot 2023-04-24 at 3 30 37 PM](https://user-images.githubusercontent.com/126277909/234109670-49fb1163-dfbe-403a-8c30-6d627b113003.png)

![Screen Shot 2023-04-24 at 3 24 04 PM](https://user-images.githubusercontent.com/126277909/234108218-e94b5d7b-6672-4dc6-8a73-68974f0d1b2e.png)
    
-- Now I wanted to get a complete view of all drivers, their total points, and their average starting point on the grid as well as where they finished. I topped it off with their average grid movement
-- to showcase drivers who, on average, improved their position during the race.

![Screen Shot 2023-04-24 at 3 31 05 PM](https://user-images.githubusercontent.com/126277909/234109756-292419e3-503b-44b4-975d-002fdef52b4e.png)

![Screen Shot 2023-04-24 at 3 24 48 PM](https://user-images.githubusercontent.com/126277909/234108377-3ee5948d-55ec-4cf1-ba01-b18fe846d6dd.png)
    
-- Next I wanted to get the complete view of the racing order and the reasons behind any DNFs. Here we'll be able to see laps completed and status. Mr. Carlos Sainz 
-- had a tough US Grand Prix. I was lucky enough to attend and did in fact see him start pole and end up not even completing a lap due to damage with George Russell. 

![Screen Shot 2023-04-24 at 3 31 33 PM](https://user-images.githubusercontent.com/126277909/234109858-88b31d9d-7860-4cd9-8229-8e75db52d898.png)

![Screen Shot 2023-04-24 at 3 25 12 PM](https://user-images.githubusercontent.com/126277909/234108467-5572a668-8315-4281-86e5-f0ee5e4425fd.png)
    
-- Count of status per race, finding the most popular reasons that racers couldn't finish. 
    
![Screen Shot 2023-04-24 at 3 31 42 PM](https://user-images.githubusercontent.com/126277909/234109886-8c5c5182-f226-4990-ad0a-12d68528be9e.png)

![Screen Shot 2023-04-24 at 3 25 34 PM](https://user-images.githubusercontent.com/126277909/234108537-f3c58aa1-50c7-48cd-b0b3-01618c2e55ae.png)

    



