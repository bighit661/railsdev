<template>
  <div>
    <label for="compensation-range" class="label">Compensation Range</label>
    <span class="required"></span>
      <div class="relative">
      <select id="compensation-range" class="select">
        <option :value="item" v-for="item in compensationRanges" :key="item">
          $ {{ item }}
        </option>
      </select>
      <select-arrow></select-arrow>
    </div>
  </div>
</template>

<script>
  import SelectArrow from "../icons/SelectArrow";
  export default{
  components:{
    SelectArrow
  },
  data(){
    return {
      compensationRanges: [
        "50,000 - 60,000",
        "60,000 - 70,000",
        "70,000 - 80,000",
        "80,000 - 90,000",
        "90,000 - 100,000",
        "100,000 - 110,000",
        "110,000 - 120,000",
        "120,000 - 130,000",
        "130,000 - 140,000",
        "140,000 - 150,000",
        "150,000 - 160,000",
        "160,000 - 170,000",
        "170,000 - 180,000",
        "180,000 - 190,000",
        "200,000 or Above ",
      ],
    };
  },
  };
</script>
