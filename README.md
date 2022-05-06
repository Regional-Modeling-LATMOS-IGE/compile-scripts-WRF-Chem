# General comments related to compilation

## Limitation on the number of processors
The number of processor results from this module in WRF: wrf41/WRF/share/module_check_a_mundo.F

Around line 2109, you will see something like this:

>>CALL wrf_debug ( 0, TRIM( wrf_err_message ) )
>>wrf_err_message = '--- ERROR: Reduce the MPI rank count, or redistribute the tasks.'
>>CALL wrf_debug ( 0, TRIM( wrf_err_message ) )
>>oops = oops + 1

To disable this, we just need to comment the last line that increments oops. So, the new code will look like

>>CALL wrf_debug ( 0, TRIM( wrf_err_message ) )
>>wrf_err_message = '--- ERROR: Reduce the MPI rank count, or redistribute the tasks.'
>>CALL wrf_debug ( 0, TRIM( wrf_err_message ) )
>>! oops = oops + 1

Recompile your code with this change and then you should be able to use more processors for your future runs. 
