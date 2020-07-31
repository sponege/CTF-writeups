var _lookupTable=[ // look up table of strings
  '2-4',          'substring',
  '4-7',          'getItem',
  'deleteItem',   '12-14',
  '0-2',          'setItem',
  '9-12',         '^7M',
  'updateItem',   'bb=',
  '7-9',          '14-16',
  'localStorage'
];

(function (_op1, _op2) { // useless function
    var _temp1 = function (_op3) {
        while (--_op3) {
            _op1.push(_op1.shift());
        }
    };
    _temp1(++_op2);
}(_lookupTable, 0x78));
var _lookUpStringAtPos = function (_op1, _op2) { // argument 1 is hexadecimal!
    _op1 = _op1 - 0x0;
    var _temp1 = _lookupTable[_op1];
    return _temp1;
};

function CheckPassword(password) {
    var _0x4bbdc3 = [_lookUpStringAtPos('0xe'), _lookUpStringAtPos('0x3'), _lookUpStringAtPos('0x7'), _lookUpStringAtPos('0x4'), _lookUpStringAtPos('0xa')]; // all functions
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('9-12', 'BE*');
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_lookUpStringAtPos('0x2'), _lookUpStringAtPos('0xb'));
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_lookUpStringAtPos('0x6'), '5W');
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('16', _lookUpStringAtPos('0x9'));
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_lookUpStringAtPos('0x5'), 'pg');
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('7-9', '+n');
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_lookUpStringAtPos('0xd'), '4t');
    window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_lookUpStringAtPos('0x0'), '$F');
    if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0x8')) === password[_lookUpStringAtPos('0x1')](0x9, 0xc)) {
        if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0x2')) === password.substring(0x4, 0x7)) {
            if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0x6')) === password[_lookUpStringAtPos('0x1')](0x0, 0x2)) {
                if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]]('16') === password[_lookUpStringAtPos('0x1')](0x10)) {
                    if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0x5')) === password[_lookUpStringAtPos('0x1')](0xc, 0xe)) {
                        if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0xc')) === password[_lookUpStringAtPos('0x1')](0x7, 0x9)) {
                            if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0xd')) === password[_lookUpStringAtPos('0x1')](0xe, 0x10)) {
                                if (window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_lookUpStringAtPos('0x0')) === password[_lookUpStringAtPos('0x1')](0x2, 0x4)) return !![];
                            }
                        }
                    }
                }
            }
        }
    }
    return ![];
}
