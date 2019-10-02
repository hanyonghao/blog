import React from 'react';
import LayoutMain from '../../shared/components/layoutMain';
import News from './news';
import Live2d from './live2d';
import style from '../styles/index.module.scss';

const HomeIndex = () => {
    document.title = 'TFW';
    return (
        <LayoutMain>
            <div className={style.item}>
                <News />
                <Live2d />
            </div>
        </LayoutMain>
    );
}

export default HomeIndex;