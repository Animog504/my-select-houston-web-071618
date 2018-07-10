def my_select(collection)
 # your code here!
 if block_given?
   i = 0 #iterator
   temp = []
   
   while i<collection.length 
    bool = yield(collection[i])
    if bool
      temp[i] =  collection[i]
      i+=1
    end
   
   end
   temp
 else
   #nothing
 end
end
