from application import application

def test_hello_world():
    response = application.test_client().get('/')
    assert response.status_code == 200
    assert response.data == b'Hello, World!'
