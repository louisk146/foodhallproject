_song.js.jsx

var Event = React.createClass({
	render () {
		return (
			<div>
		        <h4>{ this.props.event } sang:</h4>
		        <p>{ this.props.location }</p>
		    </div>
			)
	}
});