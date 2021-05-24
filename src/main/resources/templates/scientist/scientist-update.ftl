<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update scientist</title>
    <link rel="stylesheet" href="https://snipp.ru/cdn/select2/4.0.13/dist/css/select2.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css"
          integrity="sha512-kq3FES+RuuGoBW3a9R2ELYKRywUEQv0wvPTItv3DSGqjpbNtGWVdvT8qwdKkqvPzT93jp8tSF4+oN4IeTEIlQA=="
          crossorigin="anonymous"/>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>

<body>
<div style="width: 25%; margin: 0 auto">
    <h2>Edit scientist</h2>

    <form name="scientistForm" action="" method="POST" class="row g-3">

        <div class="form-group">
            <label for="membership" class="form-label">Membership</label>
            <select class="form-control" name="membership" id="membership" required>
                <option value="${scientist.membership.id}" name="${scientist.membership.id}"
                        selected>${scientist.membership.name}</option>
            </select>
        </div>

        <div class="form-group">
            <label for="nameOfOrganization" class="form-label">Name of organization:</label>
            <input type="text" name="nameOfOrganization" id="nameOfOrganization" class="form-control"
                   placeholder="Національна академія наук" required value="${scientist.nameOfOrganization}">
        </div>

        <div class="form-group">
            <label for="specialization" class="form-label">Specialization:</label>
            <input type="text" name="specialization" id="specialization" class="form-control" placeholder="Біологія"
                   required value="${scientist.specialization}">
        </div>

        <button class="btn btn-primary" type="submit">Update</button>
    </form>
</div>


<script src="https://snipp.ru/cdn/jquery/2.1.1/jquery.min.js"></script>
<script src="https://snipp.ru/cdn/select2/4.0.13/dist/js/select2.min.js"></script>
<script src="https://snipp.ru/cdn/select2/4.0.13/dist/js/i18n/ru.js"></script>
<script>
    $(document).ready(function () {
        $('select').select2({
            theme: "bootstrap"
        });
    });
</script>

</body>
</html>