const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case "SWITCH_CURRENCY":
      return [
        action.baseCurrency,
        action.rates
      ];
    default:
      return state;
  }
};

export default reducer;
