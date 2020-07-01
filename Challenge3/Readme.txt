#Function for getting the Value
def deep_get(d, keys):
    if not keys or d is None:
        return d
    return deep_get(d.get(keys[0]), keys[1:])

#Example
object = {'x':{'y':{'z':'a'}}}

#Execute for the output
deep_get(object, ['x', 'y', 'z']) => 'a'
