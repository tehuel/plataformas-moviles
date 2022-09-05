export default async function handler(req, res, next) {
  let url = "https://coffee.alexflipnote.dev/random.json"
  res.setHeader('Access-Control-Allow-Origin', '*');
  fetch(url).then(response => response.json()).then(response => {
    res.json(response)
  })
}