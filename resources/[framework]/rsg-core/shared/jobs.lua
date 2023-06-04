RSGShared = RSGShared or {}

RSGShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved

RSGShared.Jobs = {
    ['unemployed'] = {
        label = 'Civilian',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 1
            },
        },
    },
    ['horsetrainer'] = {
        label = 'Horse Trainer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 8
            },
        },
    },
    ['farmer'] = {
        label = 'Farmer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Farm Hand',
                payment = 6
            },
            ['1'] = {
                name = 'Farm Owner',
                isboss = true,
                payment = 8
            },
        },
    },
    ['valweaponsmith'] = { --valentine
        label = 'Valentine Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 8
            },
        },
    },
    ['rhoweaponsmith'] = { -- rhodes
        label = 'Rhodes Weaponsmith',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Master',
                isboss = true,
                payment = 8
            },
        },
    },
    ['valsaloontender'] = { --valentine
        label = 'Valentine Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['blasaloontender'] = { --blackwater
        label = 'Blackwater Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['rhosaloontender'] = { --rhodes
        label = 'Rhodes Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['stdenissaloontender1'] = { --saint denis 1
        label = 'Saint Denis Saloon 1',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['stdenissaloontender2'] = { --saint denis 2
        label = 'Saint Denis Saloon 2',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['vansaloontender'] = { --van horn
        label = 'Van Horn Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['armsaloontender'] = { --armadillo
        label = 'Armadillo Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['tumsaloontender'] = { --tumbleweed
        label = 'Tumbleweed Saloon',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['moonsaloontender1'] = { --lemoyne speakeasy
        label = 'Lemoyne Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['moonsaloontender2'] = { --new austin speakeasy
        label = 'New Austin Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['moonsaloontender3'] = { --cattail pond speakeasy
        label = 'Cattail Pond Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['moonsaloontender4'] = { --hanover speakeasy
        label = 'Hanover Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['moonsaloontender5'] = { --manzanita post speakeasy
        label = 'Manzanita Post Speakeasy',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Tender',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['stdeniswholesale'] = {
        label = 'St Denis Wholesale Trader',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Trader',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['blkwholesale'] = {
        label = 'Blackwater Wholesale Trader',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 6
            },
            ['1'] = {
                name = 'Trader',
                payment = 7
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['railroad'] = {
        label = 'Railroad',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Conductor',
                payment = 6
            },
            ['1'] = {
                name = 'Driver',
                payment = 7
            },
            ['2'] = {
                name = 'Station Manager',
                isboss = true,
                payment = 8
            },
        },
    },
    ['police'] = {
        label = 'Law Enforcement',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 8
            },
            ['1'] = {
                name = 'Officer',
                payment = 10
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 12
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 14
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 16
            },
        },
    },
    ['medic'] = {
        label = 'Medic',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 8
            },
            ['1'] = {
                name = 'Trainee',
                payment = 10
            },
            ['2'] = {
                name = 'Doctor',
                payment = 12
            },
            ['3'] = {
                name = 'Surgeon',
                payment = 14
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 16
            },
        },
    },
    ['realestate'] = {
        label = 'Real Estate',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 6
            },
            ['1'] = {
                name = 'House Sales',
                payment = 7
            },
            ['2'] = {
                name = 'Business Sales',
                payment = 8
            },
            ['3'] = {
                name = 'Broker',
                payment = 10
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 12
            },
        },
    },
    ['judge'] = {
        label = 'Honorary',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Judge',
                payment = 25
            },
        },
    },
    ['lawyer'] = {
        label = 'Law Firm',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Associate',
                payment = 18
            },
        },
    },
    ['governor1'] = {
        label = 'Governor New Hanover',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 35
            },
        },
    },
    ['governor2'] = {
        label = 'Governor West Elizabeth',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 35
            },
        },
    },
    ['governor3'] = {
        label = 'Governor New Austin',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 35
            },
        },
    },
    ['governor4'] = {
        label = 'Governor Ambarino',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 35
            },
        },
    },
    ['governor5'] = {
        label = 'Governor Lemoyne',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Governor',
                isboss = true,
                payment = 35
            },
        },
    },
}
