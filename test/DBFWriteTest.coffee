DBFWriter = require "../src/DBFWriter"

header = [
        name: 'name'
        type: 'C'
    ,
        name: 'gender'
        type: 'L'
    ,
        name: 'birthday'
        type: 'D'
    ,
        name: 'stature'
        type: 'N'
        precision: '2'
    ,
        name: 'registDate'
        type: 'C'
]
doc = [
        name: 'charmi'
        gender: true
        birthday: new Date()
        stature: 0
        registDate: new Date()
    ,
        name: '张三'
        gender: false
        birthday: new Date(1935, 1, 2)
        stature: 1.87
        registDate: new Date()
]
pathName = './dbfout'
fileName = 'people.dbf'

# header = [
#         name: 'name'
#         type: 'C'
# ]
# doc = [
#         name: 'name'
# ]
dbfWriter = new DBFWriter header, doc, pathName, fileName

dbfWriter.on 'finish', ()->
    console.log "finish"

dbfWriter.write()
#console.log 21.toFixed(2).toString().charCodeAt(0)