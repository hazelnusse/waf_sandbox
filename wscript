#! /usr/bin/env python
# encoding: utf-8

top = '.'
out = 'build'


def options(opt):
    opt.load('compiler_c')

def configure(cfg):
    cfg.load('compiler_c')

def build(bld):
    bld.recurse('test0')
    bld.recurse('test1')
    bld.recurse('test2')
    bld.recurse('test3')
