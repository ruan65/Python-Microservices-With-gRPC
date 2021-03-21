from recommendations_service import RecommendationService
from reccomendations_pb2 import BookCategory, RecommendationsRequest


def test_recommendations():
    service = RecommendationService()
    request = RecommendationsRequest(
        user_id=1, category=BookCategory.MYSTERY, max_results=1
    )

    response = service.Recommend(request, None)
    assert len(response.recommendations) == 1


if __name__ == '__main__':
    test_recommendations()
