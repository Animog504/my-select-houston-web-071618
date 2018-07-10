def my_select(collection)
 # your code here!
 if block_given?
   i = 0                    #iterator for the passed in array 
   count = 0                # secondary iterator for temp[]
   temp = []                #return array
   
   while i<collection.length 
    bool = yield(collection[i])           #test true/false
    if bool                               #if whatever method shows true,
      temp[count] =  collection[i]        #assign that value to our array temp at count
      count += 1                          #iterate count otherwise just iterate i to keep going
    end
    i+=1
   end
   temp                                   #returns temp[]
 else
   #nothing
 end
end
