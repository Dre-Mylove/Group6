<template>
  <div class="calculator">
    <form @submit.prevent="calculate">
      <div class="loanamt">
        <label>Loan amount</label>
        <input data-toggle="tooltip" data-placement="top" title="Enter amount loaned" class="form-control" v-model.number="loanAmount" />
      </div>
      <div class="interest">
        <label>Interest rate</label>
        <input data-toggle="tooltip" data-placement="top" title="Enter interest rate in %" class="form-control" v-model.number="interestRate" />
      </div>
      <div class="months">
        <label>Months to pay off</label>
        <input data-toggle="tooltip" data-placement="top" title="Enter months to pay off" class="form-control" v-model.number="numMonths" />
      </div>
      <button type="submit" class="btn btn-primary" id="calculate-butt">
        Calculate
      </button>
    </form>
    <p data-toggle="tooltip" data-placement="bottom" title="Total to pay off loan with interest" class="payment">Monthly Payment: {{ monthlyPayment.toFixed(2) }}</p>
  </div>

</template>

<script>
export default {
  name: "Calculator",
  data() {
    return {
      loanAmount: 0,
      interestRate: 0,
      numMonths: 0,
      monthlyPayment: 0,
    };
  },
  computed: {
    formValid() {
      const { loanAmount, interestRate, numMonths } = this;
      return (
        +loanAmount >= 0 &&
        0 <= +interestRate &&
        +interestRate <= 100 &&
        +numMonths > 0
      );
    },
  },
  methods: {
    calculate() {
      if (!this.formValid) {
        return;
      }
      const { loanAmount, interestRate, numMonths } = this;
      this.monthlyPayment = (loanAmount * (1 + interestRate / 100)) / numMonths;
    },
  },
};
</script>

<style>
.calculator {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.interest {
  margin-top: 10px;
}

.loanamt {
  margin-top: 10px;
}

.months {
  margin-top: 10px;
}

.button {
  margin-top: 15px;
}

.payment {
  margin-top: 5px;
}

#calculate-butt {
  margin-top: 10px;
}
</style>