from reccomendations_pb2 import BookCategory, RecommendationsRequest
import grpc
from reccomendations_pb2_grpc import RecommendationsStub

channel = grpc.insecure_channel("localhost:50051")
client = RecommendationsStub(channel)

request = RecommendationsRequest(user_id=1, category=BookCategory.SELF_HELP, max_results=2)
if __name__ == '__main__':
    print(client.Recommend(request))
