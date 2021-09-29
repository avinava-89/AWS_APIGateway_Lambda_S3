import json

# def lambda_handler(event,content):
#     return {
#         'statusCode' : 200,
#         'body' :json.dumps('Hello from lambda!')
#     }

def findName(name):
    name_dict = {"Avi" : "Hi Avi", "Arun" : "Hi Arun", "Rony" : "Hi Rony"}
    message = name_dict[name]
    print(message)
    return{
        'statusCode' : 200,
         "headers": {
            "Content-Type": "application/json"
        },
        'body' :json.dumps({
            'message' : message
        })
    }