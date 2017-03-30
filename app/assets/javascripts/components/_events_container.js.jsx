var EventsContainer = React.createClass({
	componentWillMount(){
		this.fetchEvents();
	},

	fetchEvents() {

		$.ajax({
	      url: this.props.eventsPath,
	      
	      dataType: 'json',
	      
	      success: function(data) {
	        this.setState({events: data});
	      }.bind(this),

	      error: function(data) {
	      	this.setState({eventss: []});
	      }.bind(this)
	    });
	},

	searchEvents(event) {
		if (event.target.value) {
			$.ajax({
		      url: this.props.searchPath+"?query="+event.target.value,
		      
		      dataType: 'json',
		      
		      success: function(data) {
		        this.setState({events: data});
		      }.bind(this),

		      error: function(data) {
		      	this.setState({events: []});
		      }.bind(this)
		    });
		}
		else{
			this.fetchEvents();
		}

	},
	
	getInitialState() {
		return { events: [] };
	},

	render() {
		
		return (
			<div>
				<Events events={this.state.events} />
				<EventsSearch searchPath={this.props.searchPath} submitPath={this.searchEvents} cancelPath={this.fetchEvents}/>
			</div>
			);

	}
});