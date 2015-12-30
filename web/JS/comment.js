// Вставляет узел child в узел parent так, что он становится n-м дочерним узлом
function insertAt(parent, child, n) {
    if (n < 0 || n > parent.childNodes.length)
        throw new Error("не допустимый индекс");
    else if (n == parent.childNodes.length) parent.appendChild(child);
    else parent.insertBefore(child, parent.childNodes[n]);
}

function write_name() {
    var R = document.getElementById('result');
    var login = document.getElementById('login');
    var N = login.value;
    var wishes_list = document.createElement('span');
    document.getElementById('result').insertBefore(wishes_list, R.firstChild);
    var text_wish = document.createTextNode(N);
    wishes_list.appendChild(text_wish);
    wishes_list.className = 'table_wish';
    login.value = '';
}

