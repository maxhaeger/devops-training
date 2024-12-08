import os
from flask import Flask, request, redirect, url_for

UPLOAD_FOLDER = 'files'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/upload', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        if 'file' not in request.files:
            print('No file part')
            return redirect(request.url)
        
        file = request.files['file']
        
        if file.filename == '':
            print("No file selected.")
            return redirect(request.url)

        if file:
            filename = file.filename
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            return f'''
                <p>File "{filename}" uploaded successfully.</p>
                <p><a href="http://localhost:5000/download/{filename}">Download the file</a></p>
            '''

    # If GET request, show upload form
    return '''
    <!doctype html>
    <title>Upload file</title>
    <h1>Upload new file</h1>
    <form method="post" enctype="multipart/form-data">
      <input type="file" name="file">
      <input type="submit" value="Upload">
    </form>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
