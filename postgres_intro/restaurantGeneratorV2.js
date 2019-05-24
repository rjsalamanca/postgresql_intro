let restaurant = ['The Wild Tree' , 'The Dapper Violin' , 'The Enigma Deer' , 'The Greek Oriental' , 'The Eastern Smith' , 'Shambles' , 'Whisperwind' , 'The Turban' , 'Whammy' , 'The Nomad'] 
const category = ['Indian', 'american', 'Chinese', 'sushi', 'dim sum', 'bbq', 'sea food', 'thai', 'mexican', 'sandwiches', 'pizza', 'wings'];
const address = ['844 West Liberty Ave. Westminster, MD 21157', '61 Bridge Dr. Montclair, NJ 07042', '915 Lake St. Middleton, WI 53562', '222 Lafayette Street Southaven, MS 38671', '275 Ocean Drive New Port Richey, FL 34653', '7785 Vine Lane South Richmond Hill, NY 11419', '36 Orchard Street Acworth, GA 30101', '21 Woodland Ave. Manitowoc, WI 54220', '370 West Green Lake Drive Rolla, MO 65401', '97 Talbot Street Miami Beach, FL 33139'];

// Reviewer 
const reviewerName = ['Marian Carter', 'Alivia Halliday', 'Alaya Rivera', 'Byron Lowery', 'Constance Oconnell', 'Karam Fry', 'Coby Bull', 'Simone Mcneil', 'Josephine Burns', 'Emma-Louise Person'];
const reviewerEmail = ['Marian@gmail.com','Alivia@gmail.com','Alaya@gmail.com','Byron@gmail.com','Constance@gmail.com','Karam@gmail.com','Coby@gmail.com','Simone@gmail.com','Josephine@gmail.com','EmmaL@gmail.com'];

// Reviewer Table
const reviewTitle = ['OUTSTANDING', 'GREAT PLACE', 'TERRIBLE SERVICE', 'AVOID AT ALL COSTS', 'DONT GO HERE', 'I LOVE THIS PLACE', 'I CANT WAIT TO COME BACK', 'I WISH I HAD']
const reviewText = 'Bacon ipsum dolor amet kielbasa meatball bacon pork ham hock burgdoggen, tri-tip shoulder tail. Capicola pork porchetta chicken bacon frankfurter. Swine pork loin biltong, ham hock ground round tenderloin beef pig cow venison turkey sausage shoulder ball tip. Rump tri-tip swine spare ribs. Pork chop flank buffalo burgdoggen frankfurter pancetta alcatra ribeye ball tip.'
const randomReviewer = [];
const randomRestaurant = [];

console.log(
'   INSERT INTO restaurant_v2' + '\n' +
'      (name_resto, address_loc, category)'  + '\n' +
'   VALUES'
);

for(let i = 0; i < restaurant.length; i++){
    const randomCategory = category[Math.floor(Math.random() * category.length)];

    let sendString = `      ('${restaurant[i]}', '${address[i]}', '${randomCategory}')`;

    if(i != restaurant.length - 1){
        console.log(`${sendString},`);
    } else {
        console.log(`${sendString};`);
    }
}


console.log('\n\n' +
'   INSERT INTO reviewer' + '\n' +
'      (name_reviewer, email, karma)'  + '\n' +
'   VALUES'
);

for(let i = 0; i < reviewerName.length; i++){
    const reviwerKarma = Math.floor(Math.random() * 8); // 0 - 7

    let reviewerString = `      ('${reviewerName[i]}','${reviewerEmail[i]}','${reviwerKarma}')`;
    if(i != restaurant.length - 1){
        console.log(`${reviewerString},`);
    } else {
        console.log(`${reviewerString};`);
    }
}

console.log('\n\n' +
'   INSERT INTO review_table' + '\n' +
'      (reviewer_id, stars, title, review, restaurant_id)'  + '\n' +
'   VALUES'
);

while(randomReviewer.length != reviewerName.length || randomRestaurant.length != reviewerName.length){
    const chooseReviewer = Math.floor(Math.random() * reviewerName.length);
    const chooseRestaurant = Math.floor(Math.random() * restaurant.length);

    if(randomReviewer.filter(num => num == chooseReviewer).length == 0){
        randomReviewer.push(chooseReviewer);
    }

    if(randomRestaurant.filter(num => num == chooseRestaurant).length == 0){
        randomRestaurant.push(chooseRestaurant);
    }
}

randomReviewer.map((num,ind,arr) => arr[ind] = num + 1);
randomRestaurant.map((num,ind,arr) => arr[ind] = num + 1);

for(let i = 0; i < reviewerName.length; i++){
    const stars = Math.floor(Math.random() * 5) + 1; // 1 - 5
    const randomTitle = reviewTitle[Math.floor(Math.random() * reviewTitle.length)]; // 1 - 5

    let reviewerString = `      (${randomReviewer.pop()}, ${stars}, '${randomTitle}', '${reviewText}', ${randomRestaurant.pop()})`;

    if(i != reviewerName.length - 1){
        console.log(`${reviewerString},`);
    } else {
        console.log(`${reviewerString};`);
    }
}