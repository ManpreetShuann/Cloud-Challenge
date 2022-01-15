def extract_value(Object_, Key_):
    # Checking for Valid key/No Key
    if(Key_ == ""):
        raise Exception("Invalid Key")
    # Checking for valid Object
    if(type(Object_) != dict):
        raise Exception("Invalid Object type, Please pass a dictionary")
    # Converting string of keys to a list
    keys_list = Key_.split("/")
    n = len(keys_list)
    temp = Object_
    for i in range(0, n):
        temp = temp.get(keys_list[i])
    return temp
