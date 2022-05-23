def foo():
    a = 2
    b = 2
    import madbg; madbg.set_trace(ip='0.0.0.0', port=1337)
    return a + b


foo()

