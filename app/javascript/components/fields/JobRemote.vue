<template>
  <div>
    <p class="label">Is this a remote role?</p>
    <span class="required"></span>
      <div class="flex items-center justify-start">
        <div class="mr-5">
          <input type='radio' value="Yes" v-model="job.remote" id="isRemote">
          <label for="isRemote" class="font-normal label"> Yes </label>
        </div>
        <div class="">
          <input type='radio' value="No" v-model="job.remote" id="isNotRemote">
          <label for="isNotRemote" class="font-normal label"> No </label>
        </div>
      </div>
  </div>
</template>


<script>

  export default{
    props: {
      job: {
        type: Object,
        required: true,
      },
    },
  };
</script>
