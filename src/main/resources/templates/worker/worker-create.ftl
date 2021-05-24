<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add worker</title>
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
    <h2>Add teacher</h2>

    <form name="workerForm" action="" method="POST" class="row g-3">

        <div class="form-group">
            <label for="membership" class="form-label">Membership: </label>
            <select class="form-control" name="membership" id="membership" required>
                <#list memberships as membership>
                    <option value="${membership.id}" name="${membership.id}">${membership.name}</option>
                </#list>
            </select>
        </div>

        <div class="form-group">
            <label for="library" class="form-label">Library: </label>
            <select class="form-control" name="library" id="library" required>
                <#list libraries as library>
                    <option value="${library.id}" name="${library.id}">${library.name}</option>
                </#list>
            </select>
        </div>

        <div class="form-group">
            <label for="workerId" class="form-label">WorkerID: </label>
            <input type="text" name="workerId" id="workerId" class="form-control" placeholder="54dfsg" required>
        </div>

        <button class="btn btn-primary" type="submit">Create</button>
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
