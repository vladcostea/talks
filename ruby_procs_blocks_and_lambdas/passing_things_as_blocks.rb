# If we put an ampersand in front of the last parameter to a method, 
# Ruby will try to treat this parameter as the method’s block

# If the parameter is not a Proc, Ruby will try to convert it into one 
# (by calling to_proc on it) before associating it with the method as its block.
# 
# In the context of a method definition, putting an 
# ampersand in front of the last parameter indicates that a method may 
# take a block and gives us a name to refer to this block within the 
# method body

# In the context of a method call, putting an ampersand in front of the last argument tells Ruby to convert this argument to a Proc if necessary and then use the object as the method’s block"
