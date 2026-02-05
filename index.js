import express from 'express'

const app = express()


const PORT = process.env.PORT ?? 8080

app.get ('/', (req,res)=>{

    return res.json({
        message:'hello world'
    })
})

app.listen(PORT,()=>{
console.log('server is up and running')

})