import os
from flask import Flask, render_template
import grpc

from reccomendations_pb2 import BookCategory, RecommendationsRequest
from reccomendations_pb2_grpc import RecommendationsStub

app = Flask(__name__)

host = os.getenv("RECOMMENDATIONS_HOST", "localhost")
channel = grpc.insecure_channel(f'{host}:50051')
client = RecommendationsStub(channel)


@app.route('/')
def render_homepage():
    request = RecommendationsRequest(
        user_id=1, category=BookCategory.MYSTERY, max_results=3)
    response = client.Recommend(request)
    return render_template('homepage.html', recommendations=response.recommendations)


