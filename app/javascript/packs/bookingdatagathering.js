const datePicker = () => {

  console.log('let break it all');

  const button = document.getElementById("book-button");
  const startDate = document.getElementById('start_date');
  const endDate = document.getElementById('end_date');




  const rememberDate = (event) => {

    let savedDate = [startDate.value, endDate.value]
    console.log(savedDate);
    localStorage.setItem("date", savedDate);

  };

  const refreshBox = (e) => {

    let storedDate = localStorage.getItem("date");
    storedDate = storedDate.split(',')
    startDate.value = storedDate[0]
    endDate.value = storedDate[1]
    console.log(`${storedDate[0]}`);
  };




  button.addEventListener( "click", rememberDate)
  window.addEventListener("DOMContentLoaded", refreshBox)
}

export { datePicker }
