<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Додати кімнату-сховище</title>
    <link rel="stylesheet" href="https://snipp.ru/cdn/select2/4.0.13/dist/css/select2.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css"
          integrity="sha512-kq3FES+RuuGoBW3a9R2ELYKRywUEQv0wvPTItv3DSGqjpbNtGWVdvT8qwdKkqvPzT93jp8tSF4+oN4IeTEIlQA=="
          crossorigin="anonymous"/>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/></head>
<body>

<div style="width: 500px; margin: 0 auto">
    <h2>Додати кімнату-сховище</h2>
    <form name="storageRoomForm" action="" method="POST"  class="row g-3">

        <div class="form-group">
            <label for="number" class="form-label">Номер сховища: </label>
            <input type="text" name="number" id="number" class="form-control" placeholder="78" required>
        </div>

        <div class="form-group">
            <label for="library" class="form-label">Бібліотека: </label>
            <select class="form-control" name="library" id="library">
                <#list libraries as library>
                    <option value="${library.id}" name="${library.name}">${library.name}</option>
                </#list>
            </select>
        </div>

        <div class="form-group">
            <label for="staffs" class="form-label">Персонал: </label>
            <select class="form-control" name="staffs" id="staffs" multiple>
                <#list staffs as staff>
                    <#if staff.position.id == "3" || staff.position.id == "4" || staff.position.id == "5" || staff.position.id == "6">
                        <option value="${staff.id}" name="${staff.name}">${staff.name} - ${staff.position.position} - ${staff.library.name}</option>
                    </#if>
                </#list>
            </select>
        </div>

        <button class="btn btn-primary" type="submit">Додати</button>
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
