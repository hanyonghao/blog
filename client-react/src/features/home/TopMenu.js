import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';
import * as actions from './redux/actions';
import styles from './TopMenu.module.scss';

export class TopMenu extends Component {
  static get propTypes() {
    return {
      topMenuList: PropTypes.object.isRequired,
      actions: PropTypes.object.isRequired,
    };
  }
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.actions.homeTopMenuInit();
  }

  render() {
    return (
      <span className={styles.menu}>
        <ul>
          {Object.entries(this.props.topMenuList).map(([key, value]) => {
            let isSelect = this.props.location.pathname == '/' + key;
            return (
              <li key={key} className={isSelect ? styles.select : ''}>
                <Link to={'/' + key}>{value}</Link>
              </li>
            );
          })}
        </ul>
      </span>
    );
  }
}

/* istanbul ignore next */
function mapStateToProps(state) {
  return {
    topMenuList: state.home.topMenuList,
  };
}

/* istanbul ignore next */
function mapDispatchToProps(dispatch) {
  return {
    actions: bindActionCreators({ ...actions }, dispatch),
  };
}

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(TopMenu)
);
