def my_select(collection)
 # your code here!
 if block_given?
   i = 0 #iterator
   count = 0 # secondary iterator for temp[]
   temp = []
   
   while i<collection.length 
    bool = yield(collection[i])
    if bool
      temp[count] =  collection[i]
      count += 1 
    end
    i+=1
   end
   temp
 else
   #nothing
 end
end
