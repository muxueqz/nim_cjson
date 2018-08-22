# import  cJSON
import  nim_cjson/cJSON
# import  nim_cjson.cJSON
var json_data = """{"key": "asdfasdfh/asdfnasd\fnew"}"""
# var result = cJSON.cJSON_Parse(json_data)
var result = cJSON_Parse(json_data)
# result["key"] = "test"
discard cJSON_AddStringToObject(result, "test", "test value")
# var result = cJSON_Version()
# echo cast[ptr string](result)[]
# var encode_result = cJSON_Print(result)
var encode_result = cJSON_PrintUnformatted(result)
# var encode_result = cJSON_Minify(json_data)
echo encode_result
cJSON_free(encode_result)
