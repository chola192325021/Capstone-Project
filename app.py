from flask import Flask, render_template, request, redirect
import pandas as pd

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/upload', methods=['POST'])
def upload():
    file = request.files['file']
    course_code = request.form['courseCode']
    course_name = request.form['courseName']
    test_name = request.form['testName']
    max_marks = int(request.form['maxMarks'])

    # Read the uploaded Excel file
    df = pd.read_excel(file)

    # Extract student details from the uploaded Excel file
    student_details = df.iloc[:, :2]  # Assuming registration number is in the first column and student name is in the second column

    # Extract marks obtained from the uploaded Excel file
    marks_obtained = df.iloc[:, 2].tolist()  # Assuming marks obtained are in the third column of the Excel file

    # Create a DataFrame with course code, course name, test name, max marks, student details, and marks obtained
    data = {
        'Course Code': [course_code] * len(marks_obtained),
        'Course Name': [course_name] * len(marks_obtained),
        'Test Name': [test_name] * len(marks_obtained),
        'Max Marks': [max_marks] * len(marks_obtained),
        'Registration Number': student_details.iloc[:, 0].tolist(),
        'Student Name': student_details.iloc[:, 1].tolist(),
        'Marks Obtained': marks_obtained
    }
    result_df = pd.DataFrame(data)

    # You can do further processing with the DataFrame result_df

    # Save the result to a new Excel file
    result_df.to_excel('output.xlsx', index=False)

    return redirect('/')

if __name__ == '__main__':
    app.run(debug=True)
