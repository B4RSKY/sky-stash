return {
    Stash = {
        ['brangkas_polisi'] = {
            label = 'Brankas Polisi',
            slots = 200,
            weight = 1000000,
            withdraw_grade = 2, --minimum grade untuk withdraw
            deposit_grade = 0, --minimum grade untuk deposit
            jobs = 'police',
            target = {
                coords = vec3(449.60, -973.20, 30.69),
                label = 'Brankas polisi',
                icon = 'fas fa-archive',
                group = 'police'
            }
        },
        -- you can add many more
        -- ['brangkas_barsky'] = {
        --     label = 'Brankas Barsky',
        --     slots = 200,
        --     weight = 1000000,
        --     jobs = 'ambulance',
        --     withdraw_grade = 2,
        --     deposit_grade = 3,
        --     target = {
        --         coords = vec3(451.5, -993.1, 30.7),
        --         label = 'Brankas Barsky',
        --         icon = 'fas fa-archive',
        --         group = 'ambulance'
        --     }
        -- }
    },
}