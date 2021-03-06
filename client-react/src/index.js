import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { Route, Switch } from 'react-router'; // react-router v4
import { ConnectedRouter } from 'connected-react-router';
import { store, history } from './configureStore';
import * as serviceWorker from './serviceWorker';
import IndexPage from './features/home/IndexPage';
// import 'amfe-flexible/index.js';//移动端适配方案
import './reset.scss';
import './index.scss';

// const store = configureStore(/* provide initial state if any */);

const render = () => {
  ReactDOM.render(
    <Provider store={store}>
      <ConnectedRouter history={history}>
        {/* your usual react-router v4 routing */}
        <Switch>
          <Route path="" component={IndexPage} />
        </Switch>
      </ConnectedRouter>
    </Provider>,
    document.getElementById('root')
  );
};

render();

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
