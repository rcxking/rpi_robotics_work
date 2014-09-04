FILE(REMOVE_RECURSE
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libntcan.pdb"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/libntcan.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ntcan.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
