Feature: Testing the csv loading and saving performance
  In order to choose best data io methods,
  we want to test all csv loading and saving methods,
  and find the best method.

  Given A one column csv file "1col.csv"
    '''
    350
    750
    252
    138
    125
    125
    125
    112
    95
    196
    105
    101
    101
    101
    102
    101
    101
    102
    202
    104
    '''
  And A three columns csv file "3col.csv"
    '''
    9,52,1
    52,91,0
    91,135,0
    135,174,0
    174,218,0
    218,260,0
    260,301,0
    301,341,0
    341,383,0
    383,423,0
    423,466,0
    466,503,0
    503,547,0
    547,583,0
    583,629,0
    629,667,0
    667,713,0
    713,754,0
    754,796,0
    796,839,1
    '''

  Scenario: Loading one column csv file using Python
    Given a csv file name "1col.csv"
     When test loading with Numpy.fromfile
     Then a time should be generated less than "0.22 seconds"

  Scenario: Loading three column csv file using Python
    Given a csv file name "3col.csv"
     When test loading with Numpy.fromfile
     Then a time should be generated less than "0.22 seconds"

  Scenario: Load a large csv file line by line
    Given a csv file
     When load a row of csv file
     Then print a line of data
     When load another row of csv file
     Then print another line of data