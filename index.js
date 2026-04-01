const express = require('express')
const app = express()
const port = 3000
app.use(express.json())

const db = mysql.createPool({
    host:"localhost",
    user:"root",
    password:"senacrs",
    database:"database",
})

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/pilotos', (req, res) => {
    const dados = db.query("SELECT * FROM piloto")
    console.log(dados);
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})