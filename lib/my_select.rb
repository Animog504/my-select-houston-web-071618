def my_select(collection)
 # your code here!
 if block_given?
   i = 0 #iterator
   temp = []
   
   while i<collection.length 
    temp[i] =  yield(collection[i])
    i+=1
   end
   temp
 else
   #nothing
 end
end
