import * as React from 'react';

export default function ColorCircle(props) {
    return (
        <div className="color">
            <div
                className="color__circle"
                style={{background: `hsla(${props.hsla})`}}
            />
            <h2 className="color__name">{props.name}</h2>
            <dl className="color-format-list">
                <dt className="color-format-list__name">rgba:</dt>
                <dd className="color-format-list__value">{props.rgba}</dd>
                <dt className="color-format-list__name">hsla:</dt>
                <dd className="color-format-list__value">{props.hsla}</dd>
                <dt className="color-format-list__name">hex:</dt>
                <dd className="color-format-list__value">{props.hex}</dd>
            </dl>
        </div>
    );
}
