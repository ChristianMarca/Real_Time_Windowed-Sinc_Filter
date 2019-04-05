# Real_Time_Windowed-Sinc_Filter
Filtrado en dominio de la frecuencia mediante un filtro tipo Widowed-Sinc usando transformada de fourier inversa y funcion sinc de M/2 shift con una ventana de Blackman.

### Ventana Usada
<pre>
<a href="https://www.codecogs.com/eqnedit.php?latex=h[i]=K*\frac{\sin(2*\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}*[0.42-0.5*\cos(\frac{2*\pi*i}{M})&plus;0.08*\cos(\frac{4*\pi*i}{M})]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?h[i]=K*\frac{\sin(2*\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}*[0.42-0.5*\cos(\frac{2*\pi*i}{M})&plus;0.08*\cos(\frac{4*\pi*i}{M})]" title="h[i]=K*\frac{\sin(2*\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}*[0.42-0.5*\cos(\frac{2*\pi*i}{M})+0.08*\cos(\frac{4*\pi*i}{M})]" /></a>
</pre>
