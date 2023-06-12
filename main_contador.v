module main_contador(clk,fj,fk,s1,s2,s3,s4,a,b,c,d,e,f,g,x,y,z,k,l,m);

	input clk,fj,fk,x,y,z,k,l,m; //lembrar K L M
	output s1,s2,s3,s4;
	output a,b,c,d,e,f,g;
	wire a_bebida, b_bebida, c_bebida, d_bebida, e_bebida, f_bebida, g_bebida;
	wire a_sensor, b_sensor, c_sensor, d_sensor, e_sensor, f_sensor, g_sensor;
	wire A, B;


	contador(clk,fj,fk,A,B,1);
	decodificador(B,A,s1,s2,s3,s4,1);

	decodbebida(x,y,z,A,B,a_bebida, b_bebida, c_bebida, d_bebida, e_bebida, f_bebida, g_bebida);
	decodsensor(k,l,m,A,B,a_sensor, b_sensor, c_sensor, d_sensor, e_sensor, f_sensor, g_sensor);

	mux_decodificador m1(e, a_sensor, a_bebida, a);
	mux_decodificador m2(e, b_sensor, b_bebida, b);
	mux_decodificador m3(e, c_sensor, c_bebida, c);
	mux_decodificador m4(e, d_sensor, d_bebida, d);
	mux_decodificador m5(e, e_sensor, e_bebida, e);
	mux_decodificador m6(e, f_sensor, f_bebida, f);
	mux_decodificador m7(e, g_sensor, g_bebida, g);

endmodule