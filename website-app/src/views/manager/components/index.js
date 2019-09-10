import React from 'react';
import { Link, Route } from "react-router-dom";
import style from '../styles/index.module.scss';
import LayoutMain from '../../shared/components/layoutMain';
import ManagerWebLoader from './webLoader';

class ManagerIndex extends React.Component {
    // 构造函数
    constructor(props) {
        super(props);
        document.title = 'TFW - 后台管理';
    }
    // 组件加载完成
    componentDidMount() {

    }

    // 渲染
    render() {
        return (
            <LayoutMain>
                <div className={style.main}>
                    <div className={style.left}>
                        <div className={style.title}>菜单</div>
                        <ul>
                            <li>
                                <span className={style.dot}></span>
                                <Link to={`${this.props.match.url}/webLoader`}>爬虫配置</Link>
                            </li>
                        </ul>
                    </div>
                    <div className={style.right}>
                        <Route path={`${this.props.match.url}/webLoader`} component={ManagerWebLoader} />
                    </div>
                </div>
            </LayoutMain>
        );
    }
}

export default ManagerIndex;