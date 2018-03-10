/**
 * Created by Administrator on 2018/2/19.
 */
function Alert() {
    // 返回其创建的XMLHttpRequest对象
    // 参数key/value对象

    //success
    var name = $("#_name").val();
    $.ajax({
        dataType:"json",
        type:"post",
        url:"/AjaxTest",
        data:{
            "name":name
        },
        success:function (data) {
            $("#_display").val(data.people[0].sex);
            // $.each(data.people,function (index, item) {
            //     $("#_display").val(item.sex);
            // });
        }
    });
}