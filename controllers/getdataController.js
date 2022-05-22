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

    const [row] = await conn.execute("SELECT * FROM `tabel_bank` " + condition);
    if (row.length > 0) {
      return res.json({
        data: row,
      });
    }

    const search = req.query.search;
    let s = "";
    if (search) {
      s == "";
    }

    res.json({
      message: "Data not found",
    });
  } catch (err) {
    next(err);
  }
};
