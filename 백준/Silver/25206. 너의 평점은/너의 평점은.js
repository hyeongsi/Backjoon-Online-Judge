const fs = require('fs');
const inputs = fs.readFileSync('./dev/stdin').toString().trim().split("\n");

let calcGradeSum = 0;
let totalCredit = 0;
for (const input of inputs) {
    const [subject, credit, grade] = input.trim().split(" ");

    if ('P' === grade) {
        continue;
    }
    calcGradeSum += Number(credit) * convertGradeToPoints(grade);
    totalCredit += Number(credit);
}

console.log(calcGradeSum / totalCredit);

function convertGradeToPoints(grade) {
    switch (grade) {
        case 'A+' : return 4.5;
        case 'A0' : return 4.0;
        case 'B+' : return 3.5;
        case 'B0' : return 3.0;
        case 'C+' : return 2.5;
        case 'C0' : return 2.0;
        case 'D+' : return 1.5;
        case 'D0' : return 1.0;
        case 'F' : return 0.0;
    }
}