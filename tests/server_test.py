def test_server(client):
    response = client.get(
        '/',
    )

    assert response.status_code == 200

    data = response.json
    assert data['status'] == 'ready'
    assert 'time' in data

def test_not_found_error(client):

    response = client.get(
        '/non-existent-page',
    )

    assert response.status_code == 404

    data = response.json
    assert data['error'] == 'NotFound'

def test_unauthorized_request(client):
    response = client.get(
        '/principal/assignments'
    )

    assert response.status_code == 401
