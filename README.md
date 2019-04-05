# Real_Time_Windowed-Sinc_Filter
Filtrado en dominio de la frecuencia mediante un filtro tipo Widowed-Sinc usando transformada de fourier inversa y funcion sinc de M/2 shift con una ventana de Blackman.

### Ventana Usada
<pre>
<a href="https://www.codecogs.com/eqnedit.php?latex=h[i]=K\frac{\sin(2\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}[0.42-0.5*\cos(\frac{2\pi*i}{M})&plus;0.08*\cos(\frac{4\pi*i}{M})]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?h[i]=K\frac{\sin(2\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}[0.42-0.5*\cos(\frac{2\pi*i}{M})&plus;0.08*\cos(\frac{4\pi*i}{M})]" title="h[i]=K\frac{\sin(2\pi*f_{c}(i-\frac{M}{2}))}{1-\frac{M}{2}}[0.42-0.5*\cos(\frac{2\pi*i}{M})+0.08*\cos(\frac{4\pi*i}{M})]" /></a>
</pre>
Planteamiento ideal del filtro
<pre></pre>
![Drag Racing](Ideal.png)
<pre></pre>
Problema del truncamineto por analisis por numero de muestras
![Drag Racing](truncated_filter.png)
<pre></pre>
Idealizacion de ventana de Blackman or Hamming
![Drag Racing](window.png)
<pre></pre>
Solucion mediate convolucion de ventana y filtro para el problema de truncado
![Drag Racing](kernel.png)
<pre></pre>
Analisis de respuesta de filtro de acuerdo a ventana a usarse
![Drag Racing](windows.png)
<pre></pre>
Respuesta en frecuencia de las ventanas
![Drag Racing](responses.png)
<pre></pre>
Analisis del Roll Off para diseno del filtro
![Drag Racing](roll_off.png)
<pre></pre>
Para ello es recomandable usar la siguiente aproximacion para el diseno
<pre>
<a href="https://www.codecogs.com/eqnedit.php?latex=M\approx&space;\frac{4}{BW}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?M\approx&space;\frac{4}{BW}" title="M\approx \frac{4}{BW}" /></a>
</pre>
