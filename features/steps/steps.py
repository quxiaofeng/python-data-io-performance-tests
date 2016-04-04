from behave import *
import csv

@given(u'A {columns} csv file "{filename}"')
def step_impl(context, filename):
    with open(filename, 'r') as f:
        print(context.text)
        f.write(context.text)

@given(u'a csv file name "{filename}"')
def step_impl(context, filename):
    context._filename = filename

@then(u'a time should be generated less than "{time}"')
def step_impl(context, time):
    assert context._time == time

@given(u'The csv file name "3col.csv"')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@when(u'test loading with Numpy.fromfile')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@given(u'a csv file')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@when(u'load a row of csv file')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@then(u'Then print a line of data')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@when(u'load another row of csv file')
def step_impl():
    raise NotImplementedError(u'Missing a step')

@then(u'print another line of data')
def step_impl():
    raise NotImplementedError(u'Missing a step')
