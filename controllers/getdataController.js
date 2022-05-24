const jwt = require("jsonwebtoken");
const conn = require("../dbConnection").promise();

exports.getUser = async (req, res, next) => {
  try {
    if (!req.headers.authorization || !req.headers.authorization.split(" ")[1]) {
      return res.status(422).json({
        message: "Please provide the token",
      });
    }

    const theToken = req.headers.authorization.split(" ")[1];
    const decoded = jwt.verify(theToken, "secretstring");

    const categories = req.query.categories;
    let condition = "";
    if (categories) {
      condition += "where categories = '" + categories + "'";
    }

    const param = req.query.param;

    if (param) {
      condition += "and ( name like '%" + param + "%' OR fulladdress like '%" + param + "%' )";
    }

    let sqlquery = "SELECT * FROM `tabel_bank` where 1=1 " + condition;
    const [row] = await conn.execute(sqlquery);
    if (row.length > 0) {
      return res.json({
        data: row,
      });
    }

    res.json({
      message: "Data not found",
    });
  } catch (err) {
    next(err);
  }
};
