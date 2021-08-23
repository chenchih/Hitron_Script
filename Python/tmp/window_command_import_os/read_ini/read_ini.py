from configparser import ConfigParser
parser = ConfigParser()
parser.read('config.ini')
section_a_Value = parser.get('Section_A', 'Key_DEF')#GET "Value_ABC"
section_b_Value = parser.get('Section_B', 'Alarm') #Get "Some thing here"
print ("section_a_Value = ", section_a_Value )
print ("section_b_Value = ", section_b_Value )
