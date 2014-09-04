FILE(REMOVE_RECURSE
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libphidget21.pdb"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libphidget21.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/phidget21.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
