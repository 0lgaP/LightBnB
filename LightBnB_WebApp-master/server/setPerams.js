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

module.exports = {setPerams}
