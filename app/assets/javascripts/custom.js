/* Write here your custom javascript codes */
function subtractQty(){
    if(document.getElementById("qty").value - 1 < 0)
        return;
    else
        document.getElementById("qty").value--;
}