function BracketMatcher(str) { 
  
    

    const stack = [];
  
    for(let i=0; i<str.length; i++)
    {
      console.log(str[i]);
      if(str[i] === '(')
      {
        stack.push('(');
      }else if(str[i] === ')')
      {
        if(stack.length === 0)
        {
          return 0;
        }else
        {
          stack.pop();
        }
      }
    } 
    if(stack.length === 0)
    {
      return 1;
    }else
    {
      return 0;
    }
    // code goes here  
  }
     
  // keep this function call here 
  
  const a= "Rahul() (Wagh))";
  console.log(BracketMatcher(a));