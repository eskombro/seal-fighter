const END_POINT = 'http://localhost:3001'

export const getSeals = async () => {
  const url = `${END_POINT}/seals`
  const response = await fetch(url, {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
    },
  })

  if (!response.ok) {
    throw new Error(`HTTP error! status: ${response.status}`)
  }
  const resJSON = await response.json()

  return resJSON
}

export const getSealDetail = async (id) => {
  const url = `${END_POINT}/seals/${id}`
  const response = await fetch(url, {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
    },
  })

  if (!response.ok) {
    throw new Error(`HTTP error! status: ${response.status}`)
  }
  const resJSON = await response.json()

  return resJSON
}
