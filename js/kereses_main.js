function gyarto(){
    $("#proselect").html("");
    $("#osselect").html("");
    $.post(
        "./js/kereses_model.php",
        {"key":"gyart"},
        function (data) {
            $('#tablerow').remove();
            $("<option>").val("0").text("Válasszon...").appendTo("#gepselect");
            var elemek = data.elemek;
            for (i = 0; i < elemek.length; i++) {
                $("<option>").val(elemek[i].gyarto).text(elemek[i].gyarto).appendTo("#gepselect");
            }
        },
        "json"
    );
}

function gepek(){
    var gyartonev = $("#gepselect").val();
        $.post(
        "./js/kereses_model.php",
        { "key":"gepek"},
        function (data) {
            var elemek = data.elemek;
            $("#lista").empty();
            for (i = 0; i < elemek.length; i++) {
                if(gyartonev===elemek[i].gyarto) {
                    $("#lista").append('<tr id="resultrow"> ' +
                        '<td className="text-center class="cell""> ' + elemek[i].gyarto + '</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].tipus + '</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].proci_gyarto + ' ' + elemek[i].proci_tipus + '</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].memoria + ' MB</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].merevlemez + ' GB</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].op_nev + '</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].kijelzo + '"</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].videovezerlo + '</td>' +
                        '<td className="text-center class="cell"">' + elemek[i].db + ' db</td>' +
                        '<td className="text-center class="cell""> ' + elemek[i].ar + ' HUF</td>' +
                        '</tr>');
                }

            }
        },
        "json"
    );
}

function procik() {
    $("#proselect").html(" ");
    $("#osselect").html(" ");
    $.post(
        "./js/kereses_model.php",
        {"key": "pro"},
        function (data) {
            console.log(data);
            $("<option>").val("0").text("Válasszon...").appendTo("#proselect");
            var elemek = data.elemek;
            for (i = 0; i < elemek.length; i++) {
                $("<option>").val(elemek[i].proci_gyarto).text(elemek[i].proci_gyarto).appendTo("#proselect");
            }
        },
        "json"
    );
}

function prociupdate(){
    var gyartonev = $("#gepselect").val();
    var procionev = $("#proselect").val();
    $.post(
        "./js/kereses_model.php",
        { "key":"proupdate"},
        function (data) {
            $("#lista").empty();
            var elemek = data.elemek;
            for (i = 0; i < elemek.length; i++) {
                if(gyartonev===elemek[i].gyarto && procionev===elemek[i].proci_gyarto) {
                    $("#lista").append('<tr id="resultrow"> ' +
                        '<td className="text-center" class="cell"> ' + elemek[i].gyarto + '</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].tipus + '</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].proci_gyarto + ' ' + elemek[i].proci_tipus + '</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].memoria + ' MB</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].merevlemez + ' GB</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].op_nev + '</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].kijelzo + '"</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].videovezerlo + '</td>' +
                        '<td className="text-center" class="cell">' + elemek[i].db + ' db</td>' +
                        '<td className="text-center" class="cell"> ' + elemek[i].ar + ' HUF</td>' +
                        '</tr>');
                }

            }
        },
        "json"
    );
}

function os(){
    $("#osselect").html("");
    $.post(
        "./js/kereses_model.php",
        {"key":"os"},
        function (data){
            $('#tablerow').remove();
            console.log(data);
            $("<option>").val("0").text("Válasszon...").appendTo("#osselect");
            var elemek = data.elemek;
            for(i=0;i<elemek.length; i++){
                $("<option>").val(elemek[i].nev).text(elemek[i].nev).appendTo("#osselect");
            }
        },
        "json"
    );
}

function osupdate(){
    var gyartonev = $("#gepselect").val();
    var procionev = $("#proselect").val();
    var osnev = $("#osselect").val();
    $.post(
        "./js/kereses_model.php",
        { "key":"osupdate"},
        function (data) {
            var elemek = data.elemek;
            $("#lista").empty();
            for (i = 0; i < elemek.length; i++) {
                if(gyartonev===elemek[i].gyarto && procionev===elemek[i].proci_gyarto && osnev===elemek[i].op_nev) {
                    $("#lista").append('<tr id="resultrow"> ' +
                        '<td className="text-center"> ' + elemek[i].gyarto + '</td>' +
                        '<td className="text-center"> ' + elemek[i].tipus + '</td>' +
                        '<td className="text-center"> ' + elemek[i].proci_gyarto + ' ' + elemek[i].proci_tipus + '</td>' +
                        '<td className="text-center"> ' + elemek[i].memoria + ' MB</td>' +
                        '<td className="text-center"> ' + elemek[i].merevlemez + ' GB</td>' +
                        '<td className="text-center"> ' + elemek[i].op_nev + '</td>' +
                        '<td className="text-center"> ' + elemek[i].kijelzo + '"</td>' +
                        '<td className="text-center"> ' + elemek[i].videovezerlo + '</td>' +
                        '<td className="text-center">' + elemek[i].db + ' db</td>' +
                        '<td className="text-center"> ' + elemek[i].ar + ' HUF</td>' +
                        '</tr>');
                }

            }
        },
        "json"
    );
}

$(function (){

    gyarto();

    $("#gepselect").change(gepek);
    $("#gepselect").change(procik);
    $("#proselect").change(prociupdate);
    $("#proselect").change(os);
    $("#osselect").change(osupdate);
});
