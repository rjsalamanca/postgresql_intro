let restaurant = ['The Wild Tree' , 'The Dapper Violin' , 'The Enigma Deer' , 'The Greek Oriental' , 'The Eastern Smith' , 'Shambles' , 'Whisperwind' , 'The Turban' , 'Whammy' , 'The Nomad' , 'The First Chef' , 'The Western Trumpet' , 'The Lunar Boar' , 'The Vanilla Moments' , 'The Kings Tiger' , 'Alpha' , 'Carnival' , 'Chance' , 'Citrus' , 'Midnight' , 'The Caribbean Bay' , 'The Coriander Street' , 'The Pearl Clove' , 'The Jazz Pond' , 'The Court Boar' , 'Splash' , 'The Cane' , 'Lavender' , 'Aroma' , 'Kings' , 'The Sumo Garden' , 'The Amber Beehive' , 'The Fiery God' , 'The Gallery Exchange' , 'The Tandoori Cuisine' , 'Salutation' , 'Blueprint' , 'The Maple' , 'Whammy' , 'The Pearl' , 'The Waterway Goddess' , 'The Meadow Kitchen' , 'The Nifty Road' , 'The Incredible Mockingbird' , 'The Sushi Window' , 'Salutation' , 'The Wall' , 'Recess' , 'Nova' , 'Little China'];
let dishes = ['Chicken Tikka Masala' , 'Cucumber Sandwiches' , 'Porridge' , 'Goulash' , 'Chicken Noodle Soup' , 'Schnitzel' , 'Spaetzle' , 'Paella' , 'Curry' , 'Sweet & Sour Chicken (Cantonese Style)' , 'Steak' , 'Fried Egg' , 'Duck' , 'Australian Meat Pie' , 'Gazpacho' , 'Quesadilla' , 'Wrap' , 'Hollandaise Sauce' , 'Chili' , 'French Toast' , 'Spaghetti Bolognese' , 'Ratatouille' , 'Bangers & Mash' , 'Chili' , 'Gyros' , 'Scallops' , 'Chicken Noodle Soup' , 'Bratkartoffeln' , 'Souvlaki' , 'Steak Pie' , 'Roast Beef' , 'Tacos' , 'Baked Beans' , 'Fried Egg' , 'Aioli' , 'Risotto' , 'French Toast' , 'Curry' , 'Gazpacho' , 'Quesadilla' , 'Mashed Potato' , 'Macaroni Salad' , 'Tacos' , 'Baked Beans' , 'Fried Egg' , 'Aioli' , 'Risotto' , 'French Toast' , 'Curry' , 'Gazpacho'];
const category = ['Indian', 'american', 'Chinese', 'sushi', 'dim sum', 'bbq', 'sea food', 'thai', 'mexican', 'sandwiches', 'pizza', 'wings'];
const trueFalse = [true, false];

console.log(
'   INSERT INTO restaurant' + '\n' +
'        (name_resto, distance, stars, category, favorite_dish, takeout, last_date)'  + '\n' +
'    VALUES'
);

for(let i = 0; i < restaurant.length; i++){
    const randomCategory = category[Math.floor(Math.random() * category.length)];
    const randomTF = trueFalse[Math.floor(Math.random() * trueFalse.length)];
    const randomDistance = Math.floor(Math.random() * 11); // random num from 0-10
    const randomStars = Math.floor(Math.random() * 5) + 1; // random num from 1-5

    let sendString = `     ('${restaurant[i]}', ${randomDistance}, ${randomStars}, '${randomCategory}', '${dishes[i]}', ${randomTF}, '${randomDate(new Date(2019, 0, 1), new Date())}')`;

    if(i != restaurant.length - 1){
        console.log(`${sendString},`);
    } else {
        console.log(`${sendString};`);
    }
}

function randomDate(start, end) {
    var d = new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime())),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}