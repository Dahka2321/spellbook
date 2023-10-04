{{ config(
        tags = ['dunesql', 'static'],
        schema='dex',
        alias = alias('info'),
        post_hook='{{ expose_spells(\'["ethereum", "polygon", "bnb", "avalanche_c", "gnosis", "fantom", "optimism", "arbitrum", "celo", "base"]\',
                                    "sector",
                                    "dex",
                                    \'["hildobby"]\') }}')
}}

SELECT project, name, marketplace_type, x_username
FROM (VALUES
    	('uniswap', 'Uniswap', 'Direct', 'Uniswap')
    , ('pancakeswap', 'PancakeSwap', 'Direct', 'PancakeSwap')
    , ('curve', 'Curve', 'Direct', 'CurveFinance')
    , ('sushiswap', 'SushiSwap', 'Direct', 'SushiSwap')
    , ('mdex', 'Mdex', 'Direct', 'Mdextech')
    , ('dodo', 'DODO', 'Direct', 'BreederDodo')
    , ('balancer', 'Balancer', 'Direct', 'Balancer')
    , ('trader_joe', 'Trader Joe', 'Direct', 'traderjoe_xyz')
    , ('spookyswap', 'SpookySwap', 'Direct', 'SpookySwap')
    , ('biswap', 'Biswap', 'Direct', 'Biswap_Dex')
    , ('bancor_network', 'Bancor', 'Direct', 'Bancor')
    , ('ellipsis_finance', '', '', '')
    , ('babyswap', '', '', '')
    , ('apeswap', '', '', '')
    , ('shibaswap', '', '', '')
    , ('spiritswap', '', '', '')
    , ('kyberswap', '', '', '')
    , ('beethoven_x', '', '', '')
    , ('platypus_finance', '', '', '')
    , ('hashflow', '', '', '')
    , ('velodrome', '', '', '')
    , ('quickswap', '', '', '')
    , ('mstable', '', '', '')
    , ('airswap', '', '', '')
    , ('wombat', '', '', '')
    , ('defiswap', '', '', '')
    , ('gmx', '', '', '')
    , ('clipper', '', '', '')
    , ('woofi', '', '', '')
    , ('maverick', '', '', '')
    , ('thena', '', '', '')
    , ('synthetix', '', '', '')
    , ('fraxswap', '', '', '')
    , ('dfx', '', '', '')
    , ('zigzag', '', '', '')
    , ('integral', '', '', '')
    , ('wigoswap', '', '', '')
    , ('equalizer_exchange', '', '', '')
    , ('zipswap', '', '', '')
    , ('iziswap', '', '', '')
    , ('spartacus_exchange', '', '', '')
    , ('swapr', '', '', '')
    , ('rubicon', '', '', '')
    , ('arbswap', '', '', '')
    , ('verse_dex', '', '', '')
    , ('glacier', '', '', '')
    , ('nomiswap', '', '', '')
    , ('onepunchswap', '', '', '')
    ) AS temp_table (project, name, marketplace_type, x_username)