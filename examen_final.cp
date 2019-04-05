#line 1 "C:/Users/EstChristianRafaelMa/Desktop/Nueva carpeta (2)/examen_final.c"

int tam=29;int ikl;int dir=1;int Mo=15;int seb=32;
double x[32];double y[32];double dato[29];int m=5;
double sinc[15];double shp[15];
double sincc[32];double sincg[32];
double signal_mx[32];double signal_my[32];
double signal_x[32];double signal_y[32];
int num;int nn;int nmedios;int fc=0.1;


int nivel;int i;int j;int k;int i1;int ikj;int type;
 double w1a;double w2a;double wn1;double wn2;double tx;double ty;double tw;double t1;double t2;
 char txt[15];char txt1[15];int reco;
 double *ventana(){
 for(i=0;i<Mo;i++){
 sinc[i]=(sin(2*3.14159*fc*(i-(Mo-1)/2))/(3.14169*(i-(Mo-1)/2)))*(0.42-0.5*cos(2*3.14159*(i/(Mo-1)))+0.08*cos(2*3.14159*(i/(Mo-1))));
 shp[i]=0.0;
 }
 }
 double *igualar(double sg[],double gh[]){
 for(i=0;i<tam;i++){
 sincc[i]=sg[i];
 sincg[i]=gh[i];
 }
 for(i=tam;i<seb;i++){
 sincc[i]=0.0;
 sincg[i]=0.0;
 }



 }
 double *fft_c(double x[],double y[],int type){
 for (k=0,num=1; k<m; k++){
 num *= 2;}
 nmedios=num>>1;
 for (i=1, j=nmedios; i<num-2; i++)
 {
 if (i < j) {
 tx = x[i];
 ty = y[i];
 x[i] = x[j];
 y[i] = y[j];
 x[j] = tx;
 y[j] = ty;
 }
 for(k=nmedios; k <= j; k >>= 1)
 {j -= k;}
 j+=k;
 }

 nn=1;
 wn1 = -1.0;
 wn2 = 0.0;
 for (nivel=0; nivel<m; nivel++)
 { nn=2*nn;
 for(j=0; j<num; j=j+nn)
 {
 w1a = 1.0; w2a = 0.0;
 for (k=0; k< nn/2; k++)
 {
 i=k+j;
 i1=i+nn/2;
 t1 = w1a * x[i1] - w2a * y[i1];
 t2 = w1a * y[i1] + w2a * x[i1];
 x[i1] = x[i] - t1;
 y[i1] = y[i] - t2;

 x[i] += t1;
 y[i] += t2;
 tw = w1a * wn1 - w2a * wn2;
 w2a = w1a * wn2 + w2a * wn1;
 w1a = tw;
 }
 }
 wn2 = sqrt((1.0 - wn1) / 2.0);
 if(type==1){wn2 = -wn2;}
 wn1 = sqrt((1.0 + wn1) / 2.0);
 }
 if(type==0){
 for(i=0;i<num;i++){
 x[i]/=tam;
 y[i]/=tam;
 }
 }
 }

void main() {
#line 93 "C:/Users/EstChristianRafaelMa/Desktop/Nueva carpeta (2)/examen_final.c"
 PORTB = 0x0000;
 TRISB.F1 = 1;
 TRISB.F0 = 1;
 UART1_Init(115200);
 Delay_ms(100);
 ADC1_Init();
 while (1) {

 for(ikl=0;ikl<=tam-1;ikl++){
 dato[ikl] = ADC1_Read(1)*(5.0)/4095.0;
 x[ikl]=dato[ikl];
 y[ikl]=0.0;
 }


 igualar(x,y);
 fft_c(sincc,sincg,1);
 for(ikl=0;ikl<seb;ikl++){
 signal_x[i]=x[i];
 signal_y[i]=y[i];
 }
 ventana();

 igualar(x,y);
 fft_c(sincc,sincg,1);


 for(ikl=0;ikl<seb;ikl++){
 signal_mx[i]=signal_x[i]*x[i];
 signal_my[i]=signal_y[i]*y[i];
 }
 fft_c(signal_mx,signal_my,0);
 for(ikl=0;ikl<tam;ikl++){
 FloatToStr(dato[ikl],txt);
 UART1_Write_Text(txt);
 UART1_Write(44);
 }
 UART1_Write(13);
 UART1_Write(10);
 for(ikl=0;ikl<=tam-1;ikl++){
 FloatToStr(x[ikl],txt1);
 UART1_Write_Text(txt1);
 UART1_Write(43);
 FloatToStr(y[ikl],txt1);
 UART1_Write_Text(txt1);
 UART1_Write(44);
 }
 UART1_Write(13);
 UART1_Write(10);
 }

}
