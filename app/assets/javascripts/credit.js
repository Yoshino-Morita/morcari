// $(function(){

//     var optionLoop, this_month, this_year, today;
//     today = new Date();
//     this_year = today.getFullYear();
//     this_month = today.getMonth() + 1;

//       optionLoop = function(start, end, id, this_day) {
//         var i, opt;

//         opt = null;

//         for (i = start; i <= end ; i++) {
//           if (i === this_day) {
//             opt += "<option value='" + i + "' selected>" + i + "</option>";
//           } else {
//             opt += "<option value='" + i + "'>" + i + "</option>";
//           }
//         }
//         return document.getElementById(id).innerHTML = opt;
//       };
//   optionLoop(1, 12, 'id_month', 1);
//   optionLoop(2017, 2027, 'id_year', 2020);
// });
