
import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:flutter_two/ENTITIES/DataSource.dart';
import 'package:http/http.dart' as http;

class Another{
  static const newData =[
    {
      "standard": "10th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/hindi.png"
        }
      ]
    },
    {
      "standard": "9th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/hindi.png"
        }
      ]
    },
    {
      "standard": "8th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/hindi.png"
        }
      ]
    },
    {
      "standard": "7th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/hindi.png"
        }
      ]
    },
    {
      "standard": "6th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/hindi.png"
        }
      ]
    },
    {
      "standard": "5th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/hindi.png"
        }
      ]
    },
    {
      "standard": "4th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/maths.png"
        },
        {
          "subject_name": "Science",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/science.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/hindi.png"
        }
      ]
    },
    {
      "standard": "3rd",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/maths.png"
        },
        {
          "subject_name": "Environmental Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/evs.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/social-science.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/hindi.png"
        }
      ]
    },
    {
      "standard": "2nd",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/maths.png"
        },
        {
          "subject_name": "Environmental Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/evs.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/english.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/hindi.png"
        }
      ]
    },
    {
      "standard": "1st",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/maths.png"
        },
        {
          "subject_name": "Environmental Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/evs.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/english.png"
        },
        {
          "subject_name": "Hindi",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/hindi.png"
        }
      ]
    },
    {
      "standard": "11th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/maths.png"
        },
        {
          "subject_name": "Physics",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/physics.png"
        },
        {
          "subject_name": "Chemistry",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/chemistry.png"
        },
        {
          "subject_name": "Biology",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/biology.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/social-science.png"
        }
      ]
    },
    {
      "standard": "12th",
      "subjects": [
        {
          "subject_name": "Maths",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/maths.png"
        },
        {
          "subject_name": "Physics",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/physics.png"
        },
        {
          "subject_name": "Chemistry",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/chemistry.png"
        },
        {
          "subject_name": "Biology",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/biology.png"
        },
        {
          "subject_name": "English",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/english.png"
        },
        {
          "subject_name": "Social Studies",
          "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/social-science.png"
        }
      ]
    }
  ];

  static const String jsonaddress = "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9c1101b7-efd9-4d20-a9c1-9bf193e799df/classes.json?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220515%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220515T081142Z&X-Amz-Expires=86400&X-Amz-Signature=2f5ef8e839fa58abaaeefd820c42128cf3159a4bebc4e166dfb4a2552a987e4c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22classes.json%22&x-id=GetObject";

  static List<DataSource> getMyData() {

     const newData =[
      {
        "standard": "10th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/hindi.png"
          }
        ]
      },
      {
        "standard": "9th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/9th/hindi.png"
          }
        ]
      },
      {
        "standard": "8th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/8th/hindi.png"
          }
        ]
      },
      {
        "standard": "7th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/7th/hindi.png"
          }
        ]
      },
      {
        "standard": "6th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/6th/hindi.png"
          }
        ]
      },
      {
        "standard": "5th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/5th/hindi.png"
          }
        ]
      },
      {
        "standard": "4th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/maths.png"
          },
          {
            "subject_name": "Science",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/science.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/4th/hindi.png"
          }
        ]
      },
      {
        "standard": "3rd",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/maths.png"
          },
          {
            "subject_name": "Environmental Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/evs.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/social-science.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/3rd/hindi.png"
          }
        ]
      },
      {
        "standard": "2nd",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/maths.png"
          },
          {
            "subject_name": "Environmental Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/evs.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/english.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/2nd/hindi.png"
          }
        ]
      },
      {
        "standard": "1st",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/maths.png"
          },
          {
            "subject_name": "Environmental Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/evs.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/english.png"
          },
          {
            "subject_name": "Hindi",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/hindi.png"
          }
        ]
      },
      {
        "standard": "11th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/maths.png"
          },
          {
            "subject_name": "Physics",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/physics.png"
          },
          {
            "subject_name": "Chemistry",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/chemistry.png"
          },
          {
            "subject_name": "Biology",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/biology.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/11th/social-science.png"
          }
        ]
      },
      {
        "standard": "12th",
        "subjects": [
          {
            "subject_name": "Maths",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/maths.png"
          },
          {
            "subject_name": "Physics",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/physics.png"
          },
          {
            "subject_name": "Chemistry",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/chemistry.png"
          },
          {
            "subject_name": "Biology",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/biology.png"
          },
          {
            "subject_name": "English",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/english.png"
          },
          {
            "subject_name": "Social Studies",
            "subject_image": "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/social-science.png"
          }
        ]
      }
    ];

     newData.forEach((element) {
       element.forEach((key, value) {
         print(value);
       });
     });

    var reslist = jsonDecode(newData.toString()) as List;
    var filtered = jsonEncode(reslist);

    final List<DataSource> datasource = dataSourceFromJson(filtered);

    datasource.forEach((element) {
      print(element);
    });

    //print()






    return datasource;
  }




}