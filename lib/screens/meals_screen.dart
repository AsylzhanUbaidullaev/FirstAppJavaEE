import 'package:flutter/material.dart';
import 'package:super_app/models/meal_model.dart';
import 'package:super_app/models/meal_plan_model.dart';
import 'package:super_app/models/recipe_model.dart';
import 'package:super_app/screens/recipe_screen.dart';
import 'package:super_app/services/api_service.dart';


class MealsScreen extends StatefulWidget {
  // final MealPlan? mealPlan;

  // MealsScreen({this.mealPlan});

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  _buildTotalNutrientsCard() {
    return Container(
      height: 140.0,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Total Nutrients',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                // 'Calories: ${widget.mealPlan!.calories.toString()} cal',
                'Calories: 100 cal',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                // 'Protein: ${widget.mealPlan!.protein.toString()} g',
                'Protein: 100 g',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                // 'Fat: ${widget.mealPlan!.fat.toString()} g',
                'Fat: 100 g',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                // 'Carbs: ${widget.mealPlan!.carbs.toString()} g',
                'Carbs: 100 g',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildMealCard(
    // Meal meal, 
    int index) {
    String mealType = _mealType(index);
    return GestureDetector(
      onTap: () async {
        // Recipe recipe =
        // await APIService.instance.fetchRecipe(meal.id.toString());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RecipeScreen(
              mealType: mealType,
              // recipe: recipe,
            ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 220.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                // image: NetworkImage(meal.imageUrl!),
                image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190326-spicy-salmon-bowl-horizontal-1556024100.png?crop=0.669xw:1.00xh;0.0308xw,0&resize=640:*'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(60.0),
            padding: EdgeInsets.all(10.0),
            color: Colors.white70,
            child: Column(
              children: <Widget>[
                Text(
                  // mealType,
                  'Type',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                Text(
                  // meal.title!,
                  'Meal title',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _mealType(int index) {
    switch (index) {
      case 0:
        return 'Breakfast';
      case 1:
        return 'Lunch';
      case 2:
        return 'Dinner';
      default:
        return 'Breakfast';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Meal Plan'),
      ),
      body: ListView.builder(
        // itemCount: 1 + widget.mealPlan!.meals!.length,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _buildTotalNutrientsCard();
          }
          // Meal meal = widget.mealPlan!.meals![index - 1];
          return _buildMealCard(index - 1);
        },
      ),
    );
  }
}