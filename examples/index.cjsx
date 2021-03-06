React = require 'react'
ReactDOM = require 'react-dom'
{Bar,
Line,
Radar,
Legend,
Polar,
Pie,
Doughnut,
DataSet,
ToolTips} = require '../src/index'


mock_data = [65, 59, 80, 81, 56, 55, 40]
mock_data2 = [43, 25, 87, 48, 75, 99, 18]
labels = ["January", "February", "March", "April", "May", "June", "July"]

legend = <Legend style={position: 'absolute', top: 25, left: 45, padding: '10px 20px', backgroundColor: '#fff', border: '1px solid'}>
            <ul className="example-chart-legend" style={listStyleType: 'none', padding: 0, margin: 0}>
                <li>
                    <span style={backgroundColor: 'green', display: 'block', position: 'relative', float: 'left', top: 3, left: -2, width:10, height:10} />
                    First
                </li>
                <li>
                    <span style={backgroundColor: 'lightblue', display: 'block', position: 'relative', float: 'left', top: 3, left: -2, width:10, height:10} />
                    Second
                </li>
            </ul>
         </Legend>


LineExample = React.createClass
    displayName: 'LineExample'

    render: ->
        <Line
            labels={labels}
            style={width: 600, height: 400}>

            {legend}

            <DataSet
                label="First"
                fill=false
                borderColor="green"
                data=mock_data />
            <DataSet
                label="Second"
                fill=false
                borderColor="lightblue"
                data=mock_data2 />
        </Line>


ReactDOM.render <LineExample />, document.getElementById('line-graph')


BarExample = React.createClass
    displayName: 'BarExample'

    render: ->
        <Bar
            labels={labels}
            style={width: 600, height: 400}>

            {legend}

            <DataSet
                label="First"
                fill=false
                backgroundColor="green"
                borderColor="green"
                data=mock_data />
            <DataSet
                label="Second"
                fill=false
                backgroundColor="lightblue"
                borderColor="lightblue"
                data=mock_data2 />
        </Bar>

ReactDOM.render <BarExample />, document.getElementById('bar-graph')

RadarExample = React.createClass
    displayName: 'RadarExample'

    render: ->
        <Radar
            labels={labels}
            style={width: 600, height: 400}>

            {legend}
            <ToolTips enabled=true />

            <DataSet
                label="First"
                fill=false
                backgroundColor="green"
                borderColor="green"
                data=mock_data />
            <DataSet
                label="Second"
                fill=false
                backgroundColor="lightblue"
                borderColor="lightblue"
                data=mock_data2 />
        </Radar>

ReactDOM.render <RadarExample />, document.getElementById('radar-graph')


PolarExample = React.createClass
    displayName: 'PolarExample'

    render: ->
        <Polar
            labels={labels}
            style={width: 600, height: 400}>

            {legend}

            <DataSet
                label="Second"
                fill=false
                backgroundColor={[
                    "#F7464A",
                    "#46BFBD",
                    "#FDB45C",
                    "#949FB1",
                    "#4D5360",
                    "#720c0c",
                    "#117a5e"
                ]}
                data=mock_data2 />
        </Polar>

ReactDOM.render <PolarExample />, document.getElementById('polar-graph')


PieExample = React.createClass
    displayName: 'PieExample'

    render: ->
        <Pie
            labels={labels}
            style={width: 600, height: 400}
            percentageInnerCutout=0>

            {legend}

            <DataSet
                label="First"
                fill=false
                backgroundColor={[
                    "#F7464A",
                    "#46BFBD",
                    "#FDB45C",
                    "#949FB1",
                    "#4D5360",
                    "#720c0c",
                    "#117a5e"
                ]}
                data=mock_data />
        </Pie>

ReactDOM.render <PieExample />, document.getElementById('pie-graph')


DoughnutExample = React.createClass
    displayName: 'DoughnutExample'

    render: ->
        <Doughnut
            labels={labels}
            style={width: 600, height: 400}>

            {legend}

            <DataSet
                labels={labels}
                backgroundColor={[
                    "#F7464A",
                    "#46BFBD",
                    "#FDB45C",
                    "#949FB1",
                    "#4D5360",
                    "#720c0c",
                    "#117a5e"
                ]}
                data=mock_data />
        </Doughnut>

ReactDOM.render <DoughnutExample />, document.getElementById('doughnut-graph')
