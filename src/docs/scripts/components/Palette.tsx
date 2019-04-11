import * as React from 'react';
import ColorCircle from './ColorCircle';

function Palette(props) {
    const {colors} = props;
    const colorCollection = Object.values(colors);

    return (
        <div>
            <h1 className="header">Night Hawk Palette</h1>
            {colorCollection.map((color) => {
                return <ColorCircle {...color} />;
            })}
        </div>
    );
}

export default Palette;
