// ! provide databse access in this file to write the helper functions
// ! import this file to the router file if needed 

const database_access = require("../data/config")

const find = () => {
    return database_access("schemes")
        .select("scheme_name")
}

const findById = (id) => {
    return database_access("schemes")
        .select("scheme_name")
        .where("id", id)
}


const findSteps = (id) => {
    return database_access("schemes")
        .innerJoin("steps", "steps.scheme_id", "schemes.id")
        .select("scheme_name", "step_number", "instructions")
        .where("schemes.id", id)
        .orderBy("step_number")


}

const add = (scheme) => {
    return database_access("schemes")
        .insert(scheme)

}

const update = (changes, id) => {
    return database_access("schemes")
        .where("id", id)
        .update(changes)
}

const remove = (id) => {
    return database_access("schemes")
        .where("id", id)
        .del()
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}
