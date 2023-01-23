<br>
<form target="_blank" action="<?php echo SITE_ROOT;?>pdfgen" method="post" id="pdfdata">
<table class="table table-responsive">
    <tr>
        <th scope="col1">
            <label for = 'gepcimke'>Gyártó:</label>
            <select name="gepgyarto" class="form-control" id = 'gepselect' title='gepselect'></select>
        </th>
        <th scope="col1">
            <label for='procircimke'>Processzor:</label>
            <select name="procigyarto" class="form-control" id = 'proselect' title='proselect'></select>
        </th>
        <th scope="col1">
            <label for = 'oscimke'>OS:</label>
            <select name="osnev" class="form-control" id = 'osselect' title='osselect'></select>
        </th>
    </tr>
</table>

    <input id="submitPDF" name="adat" class="btn btn-outline-light" style="background-color: #89cff0" type="submit" value="Lista letöltése (PDF)">
</form>

<br><br>
<table class="table table-striped table-responsive">
    <thead>
        <th>Gyártó</th>
        <th>Típus</th>
        <th>CPU</th>
        <th>RAM</th>
        <th>HDD/SDD</th>
        <th>OS</th>
        <th>Kijelző</th>
        <th>GPU</th>
        <th>Darab</th>
        <th>Ár</th>
    </thead>
    <tbody id="lista">
    <tr id="tablerow">
        <td id="tablecell" colspan="10" class="text-center">
            <div class="spinner-border text-info" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
        </td>
    </tr>
    </tbody>
</table>



