React = require('react')
ReactPropTypes = React.PropTypes

# Pluralization
# Expects an object in the form {count:2, plural: 'flies', singular: 'fly'}
# ############################
Pluraliser = React.createClass(

    displayName: "Pluraliser(s)"

    propTypes:
        count: React.PropTypes.number.isRequired
        plural: React.PropTypes.string.isRequired
        singular: React.PropTypes.string.isRequired

    render: ->
        if not @props.count? or isNaN(@props.count) or @props.count == "" or @props.count < 0
            return null
        if not @props.plural? or not @props.singular?
            return null

        if @props.count > 1 or @props.count == 0
            return <span>{@props.plural}</span>
        else
            return <span>{@props.singular}</span>
)

module.exports =
    component: Pluraliser
