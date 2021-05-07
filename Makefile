
all: hello

hello: final_test_gen.S     
	gcc -no-pie -o executable final_test_gen.S hl98_httpreq_func_89.S all_8oc_vec_ptr_87.S

clean: 
     rm executable