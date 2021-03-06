MESADIR=../utils/Mesa/Mesa-7.8.2
X11LIBDIR=/usr/X11R6/lib64
COMPILECMD="gcc -O3 -m64 -o linux64ogl \
main.o readgmv.o get_statistics.o initstuff.o gmvread.o init_motif.o callbacks.o drawit.o drawaxes.o savescreen.o cbtun.o drawpolygons.o drawpolylines.o drawnodepoints.o drawcellfaces.o drawcellhiddenedges.o drawvectors.o centerform.o subsetform.o matorderform.o snapshotform.o scaleaxisform.o polysubsetform.o isosurfform.o makeisosurf.o drawisosurface.o cutplaneform.o makecutplane.o drawcutplane.o coloreditform.o attributes.o writevars.o animationform.o polygonform.o drawcelledges.o nodeform.o cellform.o nodeselform.o cellselform.o cellexpform.o drawanimvelflow.o gridanalform.o traceform.o drawtracers.o icosadraw.o plotboxform.o imagestuff.o fieldlimform.o tracelimform.o drawcolorbar.o boundingboxform.o drawboundingbox.o drawsubsetbox.o animflyform.o vectbldform.o tfldcalcform.o cutlineform.o makecutline.o drawcutline.o fldcalcform.o queryform.o nfieldform.o cfieldform.o cfieldlimform.o cfldcalcform.o cvectbldform.o fldfiles_io.o isovolform.o makeisovol.o pntsizeform.o autordform.o readgmvamr.o gen_amr.o stereoform.o linesizeform.o fcoloreditform.o SciPlot.o cutsphereform.o makecutsphere.o backgrndform.o gmvrc_io.o vectorctlform.o surfform.o surfselform.o surfexpform.o svectbldform.o sfieldform.o sfieldlimform.o sfldcalcform.o drawsurfaces.o drawsurfedges.o rbzoomform.o nfldavgform.o cfldavgform.o drawelem.o misc_ctlform.o windowsizeform.o ffieldform.o ffieldlimform.o fvectbldform.o traceselform.o trfieldform.o readgmvray.o rayform.o drawrays.o raylimform.o concaveform.o readgmvinfo.o matcolorbarform.o readexodus.o readx3d.o x3dread.o Ball.o BallAux.o BallMath.o GLwDrawA.o GLwMDrawA.o \
-L../../JPEG/lib64 -L/usr/lib64 -L$X11LIBDIR \
-lGL -lGLU \
../utils/OpenMotif/openMotif-2.3.3/lib64/libXm.a $X11LIBDIR/libXmu.a $X11LIBDIR/libXft.a $X11LIBDIR/libXrender.a /usr/lib64/libfontconfig.a /usr/lib64/libfreetype.a /usr/lib64/libexpat.a $X11LIBDIR/libXt.a $X11LIBDIR/libXext.a $X11LIBDIR/libXxf86vm.a $X11LIBDIR/libXp.a $X11LIBDIR/libXpm.a $X11LIBDIR/libSM.a -lICE ../utils/JPEG/lib64/libjpeg.a /usr/lib64/libpng.a /usr/lib64/libm.a -lX11 -lpthread -ldl /usr/lib64/libz.a ../utils/ExodusII/lib64/libexoIIv2c.a ../utils/ExodusII/lib64/libnetcdf.a"
# $MESADIR/lib64/libGL.a $MESADIR/lib64/libGLU.a \
echo $COMPILECMD
$COMPILECMD
echo "strip ./linux64ogl"
strip ./linux64ogl
