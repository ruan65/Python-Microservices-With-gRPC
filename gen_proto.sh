#! /bin/bash
# !!! run from out directory "."
python -m grpc_tools.protoc -I../protobufs \
    --python_out=. \
    --grpc_python_out=. \
    ../protobufs/reccomendations.proto
