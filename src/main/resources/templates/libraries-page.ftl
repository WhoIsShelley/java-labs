<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div style="width: 1000px; margin: 0 auto;">
    <table class="table table-dark table-striped ">
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">Name</th>
            <th class="text-center">Address</th>
            <th class="text-center">Number of books</th>
            <th class="text-center">Number of memberships</th>
            <th></th>
        </tr>
        <#list libraries as library>
            <tr>
                <td class="text-center">${library.id}</td>
                <td class="text-center">${library.name}</td>
                <td class="text-center">${library.address}</td>
                <td class="text-center">${library.numberOfBooks}</td>
                <td class="text-center">${library.numberOfMembership}</td>
                <td><a href="/ui/libraries/delete/${library.id}"><button type="button" class="btn btn-light">Delete</button></a></td>
                <td><a href="/ui/libraries/update/${library.id}"><button type="button" class="btn btn-light">Update</button></a></td>
            </tr>
        </#list>
    </table>
    <a class="btn btn-success" href="/ui/libraries/create">Create</a>
</div>

</body>
</html>