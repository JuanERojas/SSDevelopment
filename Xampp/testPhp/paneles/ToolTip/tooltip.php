<span data-tooltip="<?php echo "kfmnsdlknfandkasfnñlkndf´ñalk"; ?>" data-tooltip-position="top" style="margin-top: 60px;">Prueba</span>


<style>

[data-tooltip] {
    display: inline-block;
    position: relative;
    cursor: help;
    padding: 4px;
}
/* Tooltip styling */
[data-tooltip]:before {
    content: attr(data-tooltip);
    display: none;
    position: absolute;
    background: #000;
    color: #fff;
    padding: 4px 8px;
    font-size: 14px;
    line-height: 1.4;
    min-width: 100px;
    text-align: center;
    border-radius: 4px;
}
/* Dynamic horizontal centering */
[data-tooltip-position="top"]:before,
[data-tooltip-position="bottom"]:before {
    left: 50%;
    -ms-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
}
/* Dynamic vertical centering */
[data-tooltip-position="right"]:before,
[data-tooltip-position="left"]:before {
    top: 50%;
    -ms-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
}
[data-tooltip-position="top"]:before {
    bottom: 100%;
    margin-bottom: 6px;
}
[data-tooltip-position="right"]:before {
    left: 100%;
    margin-left: 6px;
}
[data-tooltip-position="bottom"]:before {
    top: 100%;
    margin-top: 6px;
}
[data-tooltip-position="left"]:before {
    right: 100%;
    margin-right: 6px;
}

/* Tooltip arrow styling/placement */
[data-tooltip]:after {
    content: '';
    display: none;
    position: absolute;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
}
/* Dynamic horizontal centering for the tooltip */
[data-tooltip-position="top"]:after,
[data-tooltip-position="bottom"]:after {
    left: 50%;
    margin-left: -6px;
}
/* Dynamic vertical centering for the tooltip */
[data-tooltip-position="right"]:after,
[data-tooltip-position="left"]:after {
    top: 50%;
    margin-top: -6px;
}
[data-tooltip-position="top"]:after {
    bottom: 100%;
    border-width: 6px 6px 0;
    border-top-color: #000;
}
[data-tooltip-position="right"]:after {
    left: 100%;
    border-width: 6px 6px 6px 0;
    border-right-color: #000;
}
[data-tooltip-position="bottom"]:after {
    top: 100%;
    border-width: 0 6px 6px;
    border-bottom-color: #000;
}
[data-tooltip-position="left"]:after {
    right: 100%;
    border-width: 6px 0 6px 6px;
    border-left-color: #000;
}
/* Show the tooltip when hovering */
[data-tooltip]:hover:before,
[data-tooltip]:hover:after {
    display: block;
    z-index: 50;
}



body { margin: 60px 130px; } /* Demo purposes - ignore this margin */[data-tooltip] {
    display: inline-block;
    position: relative;
    cursor: help;
    padding: 4px;
}
/* Tooltip styling */
[data-tooltip]:before {
    content: attr(data-tooltip);
    display: none;
    position: absolute;
    background: #000;
    color: #fff;
    padding: 4px 8px;
    font-size: 14px;
    line-height: 1.4;
    min-width: 100px;
    text-align: center;
    border-radius: 4px;
}
/* Dynamic horizontal centering */
[data-tooltip-position="top"]:before,
[data-tooltip-position="bottom"]:before {
    left: 50%;
    -ms-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
}
/* Dynamic vertical centering */
[data-tooltip-position="right"]:before,
[data-tooltip-position="left"]:before {
    top: 50%;
    -ms-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
}
[data-tooltip-position="top"]:before {
    bottom: 100%;
    margin-bottom: 6px;
}
[data-tooltip-position="right"]:before {
    left: 100%;
    margin-left: 6px;
}
[data-tooltip-position="bottom"]:before {
    top: 100%;
    margin-top: 6px;
}
[data-tooltip-position="left"]:before {
    right: 100%;
    margin-right: 6px;
}

/* Tooltip arrow styling/placement */
[data-tooltip]:after {
    content: '';
    display: none;
    position: absolute;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
}
/* Dynamic horizontal centering for the tooltip */
[data-tooltip-position="top"]:after,
[data-tooltip-position="bottom"]:after {
    left: 50%;
    margin-left: -6px;
}
/* Dynamic vertical centering for the tooltip */
[data-tooltip-position="right"]:after,
[data-tooltip-position="left"]:after {
    top: 50%;
    margin-top: -6px;
}
[data-tooltip-position="top"]:after {
    bottom: 100%;
    border-width: 6px 6px 0;
    border-top-color: #000;
}
[data-tooltip-position="right"]:after {
    left: 100%;
    border-width: 6px 6px 6px 0;
    border-right-color: #000;
}
[data-tooltip-position="bottom"]:after {
    top: 100%;
    border-width: 0 6px 6px;
    border-bottom-color: #000;
}
[data-tooltip-position="left"]:after {
    right: 100%;
    border-width: 6px 0 6px 6px;
    border-left-color: #000;
}
/* Show the tooltip when hovering */
[data-tooltip]:hover:before,
[data-tooltip]:hover:after {
    display: block;
    z-index: 50;
}



body { margin: 60px 130px; } /* Demo purposes - ignore this margin */
</style>