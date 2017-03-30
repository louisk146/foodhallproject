_events.js.jsx


var Events = React.createClass({
	render() {
		var showEvents = (event) => <Event name={event.name} location={song.location} key={event.id}/>;
		return <ul>{this.props.events.map(showEvents)}</ul>;
	}
});