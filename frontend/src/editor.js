import React from 'react';
import * as hljs from 'highlight.js';
import './editor.css';

export default class Editor extends React.PureComponent {
    state = {
        text: '',
        scrollTop: 0,
        scrollLeft: 0,
    };

    highlight = () => {
        if (this.codeElement) {
            hljs.highlightBlock(this.codeElement);
        }
    };

    onChangeText = ({target}) => {
        this.setState({text: target.value}, this.highlight);
    };

    onScroll = ({target}) => {
        this.setState({
            scrollTop: target.scrollTop,
            scrollLeft: target.scrollLeft,
        });
    };

    setCodeElement = (element) => {
        this.codeElement = element;
    }

    render() {
      return (
        <React.Fragment>
            <textarea
                className="editor__input-area"
                spellCheck={false}
                autoComplete="off"
                autoCorrect="off"
                autoCapitalize="none"
                value={this.state.text}
                onChange={this.onChangeText}
                onScroll={this.onScroll}
            />
            <div className="editor__output-area">
                <pre
                    className="editor__output-area-wrapper"
                    style={{
                        top: -this.state.scrollTop,
                        left: -this.state.scrollLeft,
                    }}
                >
                    <code
                        ref={this.setCodeElement}
                        className="editor__output-area-body language-lua'"
                    >
                        {this.state.text}
                    </code>
                </pre>
                
            </div>
            <button className="editor__button">Execute</button>
        </React.Fragment>
    );

    }
}