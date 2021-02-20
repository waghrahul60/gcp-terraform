let arr1 = [3, 4, 8, 5, 2];
let arr2 = [3, 4, 9, 8, 2];
let small = arr1[0];

for (let i = 0, k = 0;  arr1[i + 1] ? arr1[i + 1] : small;){
      if (arr1[i] === arr2[k]) {
        small = arr1[i + 1];
        i++;
        k = 0;
      } else if (arr2[k++]) {
        k++;
      }
      console.log(small);
}


    

