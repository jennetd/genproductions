#!/usr/bin/env bash

if [[ -z $(grep 'NPall' coupling_orders.py) ]]; then
  echo "NPall = CouplingOrder(name = 'NPall',
                       expansion_order = 99,
 hierarchy = 99)
 " >> coupling_orders.py
else
    echo "NPall order already in coupling_orders.py"
fi

if [[ -z $(grep 'NPall' couplings.py) ]]; then
    sed -i "s/'NP':1/'NP':1,'NPall':2/g" couplings.py
    sed -i "s/'NPprop':1/'NPprop':1,'NPall':1/g" couplings.py
    sed -i "s/'NPprop':2/'NPprop':2,'NPall':2/g" couplings.py
    sed -i "s/'NPprop':3/'NPprop':3,'NPall':3/g" couplings.py
    sed -i "s/'NPprop':4/'NPprop':4,'NPall':4/g" couplings.py
else
    echo "NPall order already in couplings.py"
fi
