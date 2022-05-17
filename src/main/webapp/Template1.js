function generatePdf(){
    const element = document.getElementById("inner");
    
    html2pdf()
    .from(element)
    .save();
}