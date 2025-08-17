{
    services.hyprsunset = {
        enable=false;
        transitions = {
            sun_rise = {
                calendar = "00:00";
                requests = [
                    ["temperature 5000"]
                    ["gamma 1"]
                ];
            };
        };
    };
}
