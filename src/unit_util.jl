ħ = 1.054571800e-34
Planck = 6.626070040e-34
Boltzmann = 1.38064852e-23

_h = 6.62607004
_k = 1.38064852

"""
     temperature_2_β(T)

Convert physical temperature `T` in mK to thermodynamic `β` in the unit of inverse angular frequency, that is to say ``β = ħ/kT``.
"""
function  temperature_2_β(T)
    5*_h/_k/pi/T
end

"""
    temperature_2_freq(T)

Convert temperature from mK to GHz.
"""
function temperature_2_freq(T)
    _k/_h/10*T
end

"""
    β_2_temperature(β)

Convert thermodynamic `β` in the unit of inverse angular frequency to physical temperature `T` in GHz.
"""
function β_2_temperature(β)
    5*_h/_k/pi/β
end

"""
    freq_2_temperature(freq)

Convert frequency in GHz to temperature in mK.
"""
function freq_2_temperature(freq)
    10 * freq * _h / _k
end
