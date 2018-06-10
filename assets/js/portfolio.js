$(function () {

	var filterList = {

		init: function () {
			$('#portfoliolist').mixItUp({
				selectors: {
  			  target: '.portfolio',
  			  filter: '.filter'
  		  },
  		  load: {
    		  filter: '.photo'
    		}
			});
		}
	};

	filterList.init();

});
