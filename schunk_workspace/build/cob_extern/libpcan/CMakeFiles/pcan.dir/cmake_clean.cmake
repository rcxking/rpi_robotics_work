FILE(REMOVE_RECURSE
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libpcan.pdb"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libpcan.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/pcan.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
