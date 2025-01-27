import pytest
from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier


@pytest.fixture
def sample_data():
    iris = load_iris()
    return iris.data, iris.target


def test_model_training(sample_data):
    X, y = sample_data
    model = RandomForestClassifier(random_state=42)
    model.fit(X, y)
    assert model is not None
