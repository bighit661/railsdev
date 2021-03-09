<template>
  <div>
    <label for="compensation-type" class="label">Compensation Type</label>
    <span class="required"></span>
      <div class="relative">
      <select id="compensation-type" class="select">
        <option value="Contract">Contract</option>
        <option value="Full Time">Full Time</option>

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
    SelectArrow,
  },
  };
</script>
