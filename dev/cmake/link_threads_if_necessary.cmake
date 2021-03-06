function(link_threads_if_necessary targetName)
	set(THREADS_PREFER_PTHREAD_FLAG ON)
	find_package(Threads)
	# target_link_libraries(my_app Threads::Threads)
	IF (Threads_FOUND)
		TARGET_LINK_LIBRARIES(${targetName} PRIVATE Threads::Threads)
	ENDIF ()
endfunction(link_threads_if_necessary)
