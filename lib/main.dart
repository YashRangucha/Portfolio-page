import 'package:flutter/material.dart';

void main() {
  runApp(ProfileInfoApp());
}

class ProfileInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Personal Information",
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        backgroundColor: Color.fromARGB(255, 34, 168, 198),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileHeader(),
            SizedBox(
              height: 16.0,
            ),
            ProfileSection(
              title: "About me",
              content:
                  "Enthusiastic Master's in Computer Science Engineering candidate with a proven track record in Software Development through impactful internship. ",
            ),
            ProfileSkillsSection(
              title: "Skills",
              skillImages: [
                "assets/images/android.png",
                "assets/images/flutter.png",
                "assets/images/kotlin.png",
                "assets/images/python.png",
                "assets/images/androidstudios.png",
                "assets/images/vscode.png",
                "assets/images/intellij.png",
                "assets/images/pycharm.png",
                "assets/images/github.png"
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            ProfileProjects(),
            SizedBox(height: 16.0),
            ProfileEducation(),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/IMG_2082.jpg'),
        ),
        SizedBox(height: 16.0),
        const Text(
          "Yash Rangucha",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        const Text(
          "Software Engineer",
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
        SizedBox(height: 16.0),
        ProfileItem(
          icon: Icons.email,
          text: "yrangucha@hawk.iit.edu",
        ),
        ProfileItem(
          icon: Icons.phone,
          text: "+1 (872) 258-6731",
        ),
        ProfileItem(
          icon: Icons.location_on,
          text: "3001 south king drive, Chicago IL, 60616",
        )
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final String content;

  ProfileSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
          SizedBox(height: 8.0),
          Text(
            content,
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}

class ProfileSkillsSection extends StatelessWidget {
  final String title;
  final List<String> skillImages;

  ProfileSkillsSection({required this.title, required this.skillImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 80.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: skillImages.length,
              itemBuilder: (context, index) {
                return SkillCard(imageAsset: skillImages[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String imageAsset;

  SkillCard({required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Image.asset(
          imageAsset,
          height: 40.0,
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

class ProfileProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Projects",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 200.0, // Adjusted height to avoid overflow
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ProjectItem(
                    title: "Chat-gpt Clone using MERN Stack",
                    description:
                        "Successfully developed and deployed a fully functional chat application,demostrating proficiency in MERN stack development and intergration of advanced language models.",
                  ),
                  ProjectItem(
                    title: "Sports Networking Web Application",
                    description:
                        "Integrated different APIs for live updates and included an in-built e-commerce website for sports equipment.",
                  ),
                  ProjectItem(
                    title: "SORTING ALGORITHM VISUALIZER",
                    description:
                        " Devised a web-based Sorting Algorithm visualizer shows six popular sorting algorithms: Heap, Quick , Bubble, Insertion,Merge, and Selection Sorts.",
                  ),
                  ProjectItem(
                    title: "Natural Disaster Prediction using NLP and ML models:",
                    description:
                        "Completed a comprehensive study on different Machine Learning algorithms. Used BERT classifier to classify Tweets related to different natural disasters",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;

  ProjectItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Card(
        elevation: 3.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 16.0, color: Colors.blue),
              ),
              SizedBox(height: 4.0),
              Container(
                height: 60.0, // Set a fixed height for the description container
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  maxLines: 3, // Limit the number of lines displayed
                  overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Education",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: 160.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                EducationItem(
                  degree: "MS in Computer Science",
                  university: "Illinois Institute of Technology",
                  graduationYear: "Graduating in 2025",
                ),
                EducationItem(
                  degree: "BE in Computer Engineering",
                  university: "Mumbai University",
                  graduationYear: "Graduated in 2023",
                ),
                EducationItem(
                  degree: "HSC",
                  university: "Mumbai University",
                  graduationYear: "Passedout in 2019",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String university;
  final String graduationYear;

  EducationItem({
    required this.degree,
    required this.university,
    required this.graduationYear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                degree,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                university,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                graduationYear,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
