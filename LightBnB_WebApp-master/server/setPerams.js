const setPerams = (options) => {
  let perams = [];
  if (options.city) {
    perams.push(`WHERE properties.city LIKE '%${options.city}%'`)
  }

  if (options.owner_id) {
    if (perams.length > 0) {
      perams.push(`AND properties.owner_id = '${options.owner_id}' `)
    } else {
    perams.push(`WHERE properties.owner_id = '${options.owner_id}'`)
    }
  }

  if (options.minimum_price_per_night) {
  if (perams.length > 0) {
    perams.push(`AND properties.cost_per_night > '${options.minimum_price_per_night}'`)
  } else {
    perams.push(`WHERE properties.cost_per_night > '${options.minimum_price_per_night}'`)
  }
  }

  if (options.maximum_price_per_night) {
  if (perams.length > 0) {
    perams.push(`AND properties.cost_per_night < '${options.maximum_price_per_night}'`)
  } else {
    perams.push(`WHERE properties.cost_per_night < '${options.maximum_price_per_night}'`)
  }
  }

  return perams.join(' ');
  
}


const setValues = (property) => {

  let propertyPerams = [property.owner_id, property.title, property.description ? property.description : "" , property.thumbnail_photo_url, property.cover_photo_url, property.cost_per_night, property.parking_spaces, property.number_of_bathrooms, property.number_of_bedrooms, property.country, property.street, property.city, property.province, property.post_code];

  return propertyPerams;
  
}


//{
//   owner_id: '1',
//   title: 'The Fence',
//   description: 'Population tire',
//   thumbnail_photo_url: "http://www.hrwiki.org/w/images/4/41/sbemail32.PNG",
//   cover_photo_url: "http://www.hrwiki.org/w/images/3/32/Strongbadia.png",
//   cost_per_night: 70000,
//   parking_spaces: 12,
//   number_of_bathrooms: 2,
//   number_of_bedrooms: 1,
//   country: 'Free Town USA',
//   street: 'Strongbadia ave',
//   city: 'Toronto',
//   province: 'ON',
//   post_code: 'M5h 3z7',
//   active: 'FALSE'
// }

module.exports = {setPerams, setValues}
