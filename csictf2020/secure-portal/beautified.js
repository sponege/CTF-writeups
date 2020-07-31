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
    _op1 = _op1 - 0x0; // convert string to number
    var _temp1 = _lookupTable[_op1]; // look up index of lookup table
    return _temp1; // return that string from the lookup table
};

function CheckPassword(password) {
    var _functions = ['localStorage', 'getItem', 'setItem', 'deleteItem', 'updateItem']; // all functions
    window['localStorage']['setItem']('9-12', 'BE*');
    window['localStorage']['setItem']('4-7', 'bb=');
    window['localStorage']['setItem']('0-2', '5W');
    window['localStorage']['setItem']('16', '^7M');
    window['localStorage']['setItem']('12-14', 'pg');
    window['localStorage']['setItem']('7-9', '+n');
    window['localStorage']['setItem']('14-16', '4t');
    window['localStorage']['setItem']('2-4', '$F');
    if (window['localStorage']['getItem']('9-12') === password['substring'](0x9, 0xc)) {
        if (window['localStorage']['getItem']('4-7') === password.substring(0x4, 0x7)) {
            if (window['localStorage']['getItem']('0-2') === password['substring'](0x0, 0x2)) {
                if (window['localStorage']['getItem']('16') === password['substring'](0x10)) {
                    if (window['localStorage']['getItem']('12-14') === password['substring'](0xc, 0xe)) {
                        if (window['localStorage']['getItem']('7-9') === password['substring'](0x7, 0x9)) {
                            if (window['localStorage']['getItem']('14-16') === password['substring'](0xe, 0x10)) {
                                if (window['localStorage']['getItem']('2-4') === password['substring'](0x2, 0x4)) return !![];
                            }
                        }
                    }
                }
            }
        }
    }
    return ![];
}
