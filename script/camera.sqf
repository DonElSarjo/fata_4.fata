0 call fn_sthud_usermenu_changeMode;
("RscMissionStatus" call bis_fnc_rscLayer) cutFadeOut 0.5;
[east,"base"] sideChat format ["%1 benützt die Kamera", name player];
_display = [] call (uiNamespace getvariable "bis_fnc_camera");
_display displayaddeventhandler
[
    "Unload",
    {
        3 call fn_sthud_usermenu_changeMode;
        [] spawn BIS_fnc_showMissionStatus;
    }
];
