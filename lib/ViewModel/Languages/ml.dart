class ML {
  static List ml = [
    [
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2Fwhat%20is%20machine%20learning%20picture.JPG?alt=media&token=4814191a-86b3-4810-b01a-56a35675af0b",
        "topic": "What Is Machine Learning?",
        "para":
            '''Machine learning is the process of making systems that learn and improve by themselves, by being specifically programmed.

The ultimate goal of machine learning is to design algorithms that automatically help a system gather data and use that data to learn more. Systems are expected to look for patterns in the data collected and use them to make vital decisions for themselves.

In general, machine learning is getting systems to think and act like humans, show human-like intelligence, and give them a brain. In the real world, there are existing machine learning models capable of tasks like :

Separating spam from actual emails, as seen in Gmail
Correcting grammar and spelling mistakes, as seen in autocorrect
Thanks to machine learning, the world has also seen design systems capable of exhibiting uncanny human-like thinking, which performs tasks like:

Object and image recognition
Detecting fake news
Understanding written or spoken words
Bots on websites that interact with humans, like humans
Self-driven cars '''
      },
      {
        "img": "",
        "topic": "Machine Learning Steps",
        "para":
            '''The machine learning process involves several essential steps that data scientists and machine learning engineers typically follow to build, train, and deploy predictive models. Here are the key steps involved in the machine learning process:

Problem Definition:
Clearly define the problem you want to solve with machine learning. Identify the goal, the type of problem (classification, regression, clustering, etc.), and the target variable you want to predict.

Data Collection:
Gather the relevant data required to train and evaluate the machine learning model. The data should be representative of the problem and should contain the features (input variables) and the corresponding labels (target variable) for supervised learning tasks.

Data Preprocessing:
Clean the data by handling missing values, dealing with outliers, and removing noise. Perform data transformation and normalization to ensure the data is in a suitable format for model training.

Data Splitting:
Divide the data into two or more sets: a training set to train the model, a validation set to tune hyperparameters, and a test set to evaluate the final model's performance.

Feature Engineering:
Select and extract relevant features from the data or create new features that may enhance the model's predictive power. Feature engineering is crucial for improving model performance.

Model Selection:
Choose an appropriate machine learning algorithm or model architecture based on the problem type, data characteristics, and performance requirements. Consider factors such as interpretability, complexity, and scalability.

Model Training:
Feed the training data into the selected model to let it learn patterns and relationships in the data. The model adjusts its internal parameters during the training process to minimize the prediction errors.

Model Evaluation:
Assess the trained model's performance using the validation set. Common evaluation metrics vary based on the problem type (e.g., accuracy, precision, recall, F1-score for classification; mean squared error, R-squared for regression).

Hyperparameter Tuning:
Fine-tune the model's hyperparameters to achieve better performance. Hyperparameters are configuration settings that are not learned during training, such as learning rate, number of hidden layers, or regularization strength.

Model Validation:
After hyperparameter tuning, validate the model on the test set, which the model has not seen during training. This step provides an unbiased estimate of the model's performance on unseen data.

Model Deployment:
If the model meets the desired performance criteria, deploy it to the production environment, where it can make predictions on new, real-world data.

Monitoring and Maintenance:
Continuously monitor the model's performance in the production environment. Retrain the model periodically with new data or update it to adapt to changing patterns.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FData%20Collecting%20picture.JPG?alt=media&token=e6841d6d-91f8-43cb-96e8-74ef8c22b080",
        "topic": "Step 1. Collecting Data:",
        "para":
            '''As you know, machines initially learn from the data that you give them. It is of the utmost importance to collect reliable data so that your machine learning model can find the correct patterns. The quality of the data that you feed to the machine will determine how accurate your model is. If you have incorrect or outdated data, you will have wrong outcomes or predictions which are not relevant.

Make sure you use data from a reliable source, as it will directly affect the outcome of your model. Good data is relevant, contains very few missing and repeated values, and has a good representation of the various subcategories/classes present. '''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FPreparing%20data%20picture.JPG?alt=media&token=15180ffc-5ae0-4904-ae36-dad656a8a36e",
        "topic": "Step 2. Preparing the Data:",
        "para":
            '''After you have your data, you have to prepare it. You can do this by :

Putting together all the data you have and randomizing it. This helps make sure that data is evenly distributed, and the ordering does not affect the learning process.
Cleaning the data to remove unwanted data, missing values, rows, and columns, duplicate values, data type conversion, etc. You might even have to restructure the dataset and change the rows and columns or index of rows and columns.
Visualize the data to understand how it is structured and understand the relationship between various variables and classes present.
Splitting the cleaned data into two sets - a training set and a testing set. The training set is the set your model learns from. A testing set is used to check the accuracy of your model after training.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FChoosing%20a%20model.JPG?alt=media&token=4512d5d5-9fcd-4464-be6c-c02d3d9f8ebb",
        "topic": "Step3. Choosing a Model: ",
        "para":
            '''A machine learning model determines the output you get after running a machine learning algorithm on the collected data. It is important to choose a model which is relevant to the task at hand. Over the years, scientists and engineers developed various models suited for different tasks like speech recognition, image recognition, prediction, etc. Apart from this, you also have to see if your model is suited for numerical or categorical data and choose accordingly.'''
      },
      {
        "img": "",
        "topic": "Step4. Training the Model:",
        "para":
            '''Training is the most important step in machine learning. In training, you pass the prepared data to your machine learning model to find patterns and make predictions. It results in the model learning from the data so that it can accomplish the task set. Over time, with training, the model gets better at predicting. '''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FEvaluating%20the%20model.JPG?alt=media&token=6a93790e-7b22-47e2-8eda-44237f9bc118",
        "topic": "Step5. Evaluating the Model:",
        "para":
            '''After training your model, you have to check to see how it’s performing. This is done by testing the performance of the model on previously unseen data. The unseen data used is the testing set that you split our data into earlier. If testing was done on the same data which is used for training, you will not get an accurate measure, as the model is already used to the data, and finds the same patterns in it, as it previously did. This will give you disproportionately high accuracy.

When used on testing data, you get an accurate measure of how your model will perform and its speed.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FParameter%20tuning.JPG?alt=media&token=d307ffb9-62f6-452f-b343-83a4a4bfbd5c",
        "topic": "Step6. Parameter Tuning:",
        "para":
            '''Once you have created and evaluated your model, see if its accuracy can be improved in any way. This is done by tuning the parameters present in your model. Parameters are the variables in the model that the programmer generally decides. At a particular value of your parameter, the accuracy will be the maximum. Parameter tuning refers to finding these values.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2FPredicion%20step.jpg?alt=media&token=cd4f3f4c-6ed0-41a3-b876-33283c0f340c",
        "topic": "Step7. Making Predictions",
        "para":
            '''Making predictions in machine learning refers to using a trained machine learning model to generate an output or forecast based on new input data. Here's a step-by-step guide on how to make predictions using a machine learning model:

Data Preprocessing:

If you have new data for which you want to make predictions, ensure that the data goes through the same preprocessing steps that were applied to the training data. This includes handling missing values, data transformation, and feature scaling.
Load the Trained Model:

Load the pre-trained machine learning model that you want to use for making predictions. The model should be trained on a relevant dataset and saved to a file for future use.
Prepare the Input Data:

Format the new input data in the same way the model was trained. Ensure that the input features match the features used during training and that the data is in the correct format (e.g., NumPy arrays, Pandas DataFrames).
Feed Data to the Model:

Pass the preprocessed input data through the loaded model. The model will use its learned parameters to process the input and produce the output.
Generate Predictions:

Obtain the predictions from the model. The output format depends on the type of machine learning problem:
For classification tasks: The model will provide class labels or probabilities for each class.
For regression tasks: The model will output numerical values.
Post-processing (Optional):

Depending on the application, you might need to perform post-processing on the model's predictions. For example, you might map class probabilities to discrete class labels or round regression predictions to integers.
Interpret the Results:

Analyze the predictions to gain insights into the model's performance and the behavior of the new data.
Use the Predictions:

Utilize the predictions for decision-making, reporting, or any other relevant application.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/Machine%20Learning%20course%20pics%2Fmachine%20learning%20steps%20in%20python.jpg?alt=media&token=e9ad8b31-381d-48a2-ad80-289d8d1be87a",
        "topic": "Implement Machine Learning Steps in Python",
        "para":
            '''7 Steps to Mastering Machine Learning with Python in 2022. ...
Step 1: Learn Programming for Machine Learning. ...
Step 2: Data Collection and Pre-Processing in Python. ...
Step 3: Data Analysis in Python. ...
Step 4: Machine Learning with Python. ...
Step 5: Machine Learning Algorithms In Depth. ...
Step 6: Deep Learning. ...
Step 7: Projects.
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score

# Step 1: Data Collection
# Assuming you have a dataset in a CSV file called "data.csv"
data = pd.read_csv("data.csv")

# Step 2: Data Preprocessing
X = data.drop("target_label", axis=1)  # Features
y = data["target_label"]  # Target label

# Step 3: Data Splitting
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Step 4: Feature Engineering (if required)

# Step 5: Model Selection and Training
model = SVC(kernel='linear', C=1.0, random_state=42)
model.fit(X_train, y_train)

# Step 6: Model Evaluation
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print("Accuracy:", accuracy)

# Step 7: Hyperparameter Tuning (if required)

# Step 8: Model Prediction (on new data)
new_data = np.array([[...], [...]])  # New data in the same format as the training data
new_predictions = model.predict(new_data)
print("Predictions on new data:", new_predictions)'''
      },
    ],
    [
      {
        "question":
            "Identify the kind of learning algorithm for 'facial identities for facial expressions'.",
        "option1": "Prediction",
        "option2": "Recognition patterns",
        "option3": "Recognition anomalies",
        "option4": "Generating patterns",
        "answer": "Recognition patterns"
      },
      {
        "question":
            "Which type of machine learning algorithm is used for predicting numerical values?",
        "option1": "Classification",
        "option2": "Clustering",
        "option3": "Regression",
        "option4": "Reinforcement learning",
        "answer": "Regression"
      },
      {
        "question": "In machine learning, what does 'overfitting' refer to?",
        "option1": "Model underperforms on new data",
        "option2":
            "Model performs well on training data and generalizes to new data",
        "option3":
            "Model performs well on training data but fails to generalize to new data",
        "option4": "Model is too simple to capture patterns in the data",
        "answer":
            "Model performs well on training data but fails to generalize to new data"
      },
      {
        "question":
            "Which type of learning algorithm is inspired by the way the human brain processes information?",
        "option1": "Reinforcement learning",
        "option2": "Supervised learning",
        "option3": "Unsupervised learning",
        "option4": "Deep learning",
        "answer": "Deep learning"
      },
      {
        "question":
            "Which machine learning technique is used to reduce the dimensionality of data?",
        "option1": "Regression",
        "option2": "Clustering",
        "option3": "Feature engineering",
        "option4": "Dimensionality reduction",
        "answer": "Dimensionality reduction"
      },
      {
        "question": "What is the main goal of unsupervised learning?",
        "option1": "To predict numerical values",
        "option2": "To classify data into categories",
        "option3": "To find patterns and structures in data",
        "option4": "To learn from rewards and punishments",
        "answer": "To find patterns and structures in data"
      },
      {
        "question":
            "Which machine learning algorithm is used for anomaly detection?",
        "option1": "K-Nearest Neighbors (KNN)",
        "option2": "Support Vector Machine (SVM)",
        "option3": "K-Means Clustering",
        "option4": "Isolation Forest",
        "answer": "Isolation Forest"
      },
      {
        "question":
            "What is the primary challenge in semi-supervised learning?",
        "option1": "Lack of labeled data for training",
        "option2": "Lack of unlabeled data for training",
        "option3": "Difficulty in handling numerical values",
        "option4": "Overfitting",
        "answer": "Lack of labeled data for training"
      },
      {
        "question":
            "Which evaluation metric is used for imbalanced datasets in classification tasks?",
        "option1": "Mean Absolute Error (MAE)",
        "option2": "Precision-Recall (PR) Curve",
        "option3": "R-squared (R2) Score",
        "option4": "Mean Squared Error (MSE)",
        "answer": "Precision-Recall (PR) Curve"
      },
      {
        "question":
            "In reinforcement learning, what does the agent receive as feedback from the environment?",
        "option1": "Features",
        "option2": "Labels",
        "option3": "Rewards or punishments",
        "option4": "Clusters",
        "answer": "Rewards or punishments"
      },
      {
        "question":
            "Which machine learning algorithm is used for text classification?",
        "option1": "Naive Bayes",
        "option2": "Decision Tree",
        "option3": "Random Forest",
        "option4": "K-Means Clustering",
        "answer": "Naive Bayes"
      },
      {
        "question":
            "What is the purpose of the activation function in a neural network?",
        "option1": "To initialize the weights",
        "option2": "To connect input and output layers",
        "option3": "To calculate the loss function",
        "option4": "To introduce non-linearity",
        "answer": "To introduce non-linearity"
      },
      {
        "question":
            "Which technique is used to handle missing data in a dataset?",
        "option1": "Clustering",
        "option2": "Feature scaling",
        "option3": "Imputation",
        "option4": "Dimensionality reduction",
        "answer": "Imputation"
      },
      {
        "question":
            "Which type of learning algorithm is used for image segmentation?",
        "option1": "Clustering",
        "option2": "Supervised learning",
        "option3": "Reinforcement learning",
        "option4": "Unsupervised learning",
        "answer": "Unsupervised learning"
      },
      {
        "question":
            "What is the purpose of the term 'Gradient' in Gradient Descent optimization?",
        "option1": "To measure model accuracy",
        "option2": "To adjust learning rate",
        "option3": "To update model weights",
        "option4": "To visualize data",
        "answer": "To update model weights"
      },
      {
        "question":
            "Which machine learning algorithm is used for collaborative filtering in recommendation systems?",
        "option1": "K-Means Clustering",
        "option2": "K-Nearest Neighbors (KNN)",
        "option3": "Support Vector Machine (SVM)",
        "option4": "Matrix Factorization",
        "answer": "Matrix Factorization"
      },
      {
        "question":
            "In which type of learning algorithm, both input and output data are provided for training?",
        "option1": "Supervised learning",
        "option2": "Unsupervised learning",
        "option3": "Semi-supervised learning",
        "option4": "Reinforcement learning",
        "answer": "Supervised learning"
      },
      {
        "question":
            "Which machine learning technique is used for reducing feature dimensions by extracting the most important features?",
        "option1": "Regression",
        "option2": "Clustering",
        "option3": "Feature selection",
        "option4": "Feature engineering",
        "answer": "Feature selection"
      },
      {
        "question":
            "What is the purpose of the 'bagging' technique in ensemble learning?",
        "option1": "To combine weak learners into a strong learner",
        "option2": "To prevent overfitting",
        "option3": "To handle imbalanced data",
        "option4": "To reduce bias",
        "answer": "To combine weak learners into a strong learner"
      },
      {
        "question": "Which evaluation metric is used for regression tasks?",
        "option1": "Precision",
        "option2": "Accuracy",
        "option3": "F1-score",
        "option4": "Mean Squared Error (MSE)",
        "answer": "Mean Squared Error (MSE)"
      },
      {
        "question":
            "Which machine learning algorithm is used for object detection in images?",
        "option1": "Support Vector Machine (SVM)",
        "option2": "K-Means Clustering",
        "option3": "Decision Tree",
        "option4": "Convolutional Neural Network (CNN)",
        "answer": "Convolutional Neural Network (CNN)"
      },
      {
        "question":
            "What is the purpose of the validation set in machine learning?",
        "option1": "To train the model",
        "option2": "To test the model's generalization performance",
        "option3": "To validate the training data",
        "option4": "To store the model's parameters",
        "answer": "To test the model's generalization performance"
      },
      {
        "question":
            "Which type of learning algorithm is used for clustering data into groups?",
        "option1": "Supervised learning",
        "option2": "Unsupervised learning",
        "option3": "Semi-supervised learning",
        "option4": "Reinforcement learning",
        "answer": "Unsupervised learning"
      },
      {
        "question": "In machine learning, what does 'precision' refer to?",
        "option1": "The ratio of true positives to true negatives",
        "option2": "The ratio of true positives to all predicted positives",
        "option3": "The ratio of true positives to all actual positives",
        "option4": "The ratio of true positives to false positives",
        "answer": "The ratio of true positives to all predicted positives"
      },
      {
        "question":
            "Which machine learning algorithm is used for collaborative filtering in recommendation systems?",
        "option1": "K-Means Clustering",
        "option2": "K-Nearest Neighbors (KNN)",
        "option3": "Support Vector Machine (SVM)",
        "option4": "Matrix Factorization",
        "answer": "Matrix Factorization"
      },
      {
        "question":
            "In which type of learning algorithm, both input and output data are provided for training?",
        "option1": "Supervised learning",
        "option2": "Unsupervised learning",
        "option3": "Semi-supervised learning",
        "option4": "Reinforcement learning",
        "answer": "Supervised learning"
      },
      {
        "question":
            "Which machine learning technique is used for reducing feature dimensions by extracting the most important features?",
        "option1": "Regression",
        "option2": "Clustering",
        "option3": "Feature selection",
        "option4": "Feature engineering",
        "answer": "Feature selection"
      },
      {
        "question":
            "What is the purpose of the 'bagging' technique in ensemble learning?",
        "option1": "To combine weak learners into a strong learner",
        "option2": "To prevent overfitting",
        "option3": "To handle imbalanced data",
        "option4": "To reduce bias",
        "answer": "To combine weak learners into a strong learner"
      },
      {
        "question": "Which evaluation metric is used for regression tasks?",
        "option1": "Precision",
        "option2": "Accuracy",
        "option3": "F1-score",
        "option4": "Mean Squared Error (MSE)",
        "answer": "Mean Squared Error (MSE)"
      },
      {
        "question":
            "Which machine learning algorithm is used for object detection in images?",
        "option1": "Support Vector Machine (SVM)",
        "option2": "K-Means Clustering",
        "option3": "Decision Tree",
        "option4": "Convolutional Neural Network (CNN)",
        "answer": "Convolutional Neural Network (CNN)"
      },
    ],
  ];
}
