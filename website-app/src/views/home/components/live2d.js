import React from 'react';
import style from '../styles/live2d.module.scss';
import { LAppDelegate } from "../common/live2d/lappdelegate";

class HomeLive2d extends React.Component {
    // 加载完成
    componentDidMount() {
        // let script = document.createElement('script');
        // script.type = 'text/javascript';
        // script.src = '/live2d/live2dcubismcore.min.js';
        // script.onload = () => {
        //     let script2 = document.createElement('script');
        //     script2.type = 'text/javascript';
        //     script2.innerHTML = 'loadlive2d("live2d", "/live2d/kesshouban_v4/kesshouban_v1.1.model3.json");';
        //     this.live2d_div.appendChild(script2);
        // }
        // this.live2d_div.appendChild(script);
        // 初始化动画
        if (LAppDelegate.getInstance().initialize() === false) {
            return;
        }

        LAppDelegate.getInstance().run();
    }
    // 组件卸载
    componentWillUnmount() {
        LAppDelegate.releaseInstance();
    }

    // 渲染
    render() {
        return (
            <div ref={el => this.live2d_div = el} className={style.live2d}>
                <canvas id="live2d" width="250" height="290"></canvas>
            </div>
        );
    }
}

export default HomeLive2d;