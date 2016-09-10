$(function() {

    $('#side-menu').metisMenu();
    // $("#example1").DataTable();
    var table =   $('#example1').DataTable({
        responsive: {
            details: {
                type: 'column',
                target: -1,
            }
        },
        columnDefs: [ {
            targets: -1,
            orderable: false,
            searchable: false,
            className: 'control',
        }, {
            targets: 0,
            orderable: false,
            searchable: false,
            className: 'selectall-checkbox',
        } ],
        select: {
            style: 'multi',
            selector: 'td:first-child',
        },
        order: [ 1, 'asc' ],
    });


    // On DataTables select / deselect event check / uncheck all checkboxes. And deal with the checkbox
    // in the thead (check or uncheck).
    table.on('select.dt deselect.dt', function (e, dt, type, indexes){
        var countSelectedRows = table.rows( { selected: true } ).count();
        var countItems = table.rows().count();

        if (countItems > 0) {
        if (countSelectedRows == countItems){
                $('thead .selectall-checkbox input[type="checkbox"]', this).prop('checked', true);
        } else {
                $('thead .selectall-checkbox input[type="checkbox"]', this).prop('checked', false);
        }
        }

        if (e.type === 'select') {
            $('.selectall-checkbox input[type="checkbox"]', table.rows({ selected: true }).nodes()).prop('checked', true);
        } else {
            $('.selectall-checkbox input[type="checkbox"]', table.rows({ selected: false }).nodes()).prop('checked', false);
        }
    });

    // When clicking on "thead .selectall-checkbox", trigger click on checkbox in that cell.
    table.on('click', 'thead .selectall-checkbox', function() {
        $('input[type="checkbox"]', this).trigger('click');
    });


    // When clicking on the checkbox in "thead .selectall-checkbox", define the actions.
    table.on('click', 'thead .selectall-checkbox input[type="checkbox"]', function(e) {
        if (this.checked) {
            table.rows().select();
        } else {
            table.rows().deselect();
        }
          
        e.stopPropagation();
    });

});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
    $(window).bind("load resize", function() {
        topOffset = 50;
        width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse');
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse');
        }

        height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    var element = $('ul.nav a').filter(function() {
        return this.href == url || url.href.indexOf(this.href) == 0;
    }).addClass('active').parent().parent().addClass('in').parent();
    if (element.is('li')) {
        element.addClass('active');
    }
});
