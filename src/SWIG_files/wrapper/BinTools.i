/*
Copyright 2008-2020 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/
%define BINTOOLSDOCSTRING
"BinTools module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_bintools.html"
%enddef
%module (package="OCC.Core", docstring=BINTOOLSDOCSTRING) BinTools


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%{
#include<BinTools_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TopoDS_module.hxx>
#include<Geom2d_module.hxx>
#include<Geom_module.hxx>
#include<TopLoc_module.hxx>
#include<TopAbs_module.hxx>
#include<Message_module.hxx>
#include<CDF_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import Geom2d.i
%import Geom.i
%import TopLoc.i
%import TopAbs.i
/* public enums */
/* end public enums declaration */

/* handles */
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
typedef BinTools_LocationSet * BinTools_LocationSetPtr;
/* end typedefs declaration */

/*****************
* class BinTools *
*****************/
%rename(bintools) BinTools;
class BinTools {
	public:
		/****************** GetBool ******************/
		%feature("compactdefaultargs") GetBool;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream
theValue: bool

Returns
-------
Standard_IStream
") GetBool;
		static Standard_IStream & GetBool(Standard_IStream & IS, Standard_Boolean &OutValue);

		/****************** GetExtChar ******************/
		%feature("compactdefaultargs") GetExtChar;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream
theValue: Standard_ExtCharacter

Returns
-------
Standard_IStream
") GetExtChar;
		static Standard_IStream & GetExtChar(Standard_IStream & IS, Standard_ExtCharacter & theValue);

		/****************** GetInteger ******************/
		%feature("compactdefaultargs") GetInteger;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream
theValue: int

Returns
-------
Standard_IStream
") GetInteger;
		static Standard_IStream & GetInteger(Standard_IStream & IS, Standard_Integer &OutValue);

		/****************** GetReal ******************/
		%feature("compactdefaultargs") GetReal;
		%feature("autodoc", "No available documentation.

Parameters
----------
IS: Standard_IStream
theValue: float

Returns
-------
Standard_IStream
") GetReal;
		static Standard_IStream & GetReal(Standard_IStream & IS, Standard_Real &OutValue);

		/****************** PutBool ******************/
		%feature("compactdefaultargs") PutBool;
		%feature("autodoc", "No available documentation.

Parameters
----------
OS: Standard_OStream
theValue: bool

Returns
-------
Standard_OStream
") PutBool;
		static Standard_OStream & PutBool(Standard_OStream & OS, const Standard_Boolean theValue);

		/****************** PutExtChar ******************/
		%feature("compactdefaultargs") PutExtChar;
		%feature("autodoc", "No available documentation.

Parameters
----------
OS: Standard_OStream
theValue: Standard_ExtCharacter

Returns
-------
Standard_OStream
") PutExtChar;
		static Standard_OStream & PutExtChar(Standard_OStream & OS, const Standard_ExtCharacter theValue);

		/****************** PutInteger ******************/
		%feature("compactdefaultargs") PutInteger;
		%feature("autodoc", "No available documentation.

Parameters
----------
OS: Standard_OStream
theValue: int

Returns
-------
Standard_OStream
") PutInteger;
		static Standard_OStream & PutInteger(Standard_OStream & OS, const Standard_Integer theValue);

		/****************** PutReal ******************/
		%feature("compactdefaultargs") PutReal;
		%feature("autodoc", "No available documentation.

Parameters
----------
OS: Standard_OStream
theValue: float

Returns
-------
Standard_OStream
") PutReal;
		static Standard_OStream & PutReal(Standard_OStream & OS, const Standard_Real theValue);

		/****************** Read ******************/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a shape from <thestream> and returns it in <theshape>.

Parameters
----------
theShape: TopoDS_Shape
theStream: Standard_IStream

Returns
-------
None
") Read;
		static void Read(TopoDS_Shape & theShape, Standard_IStream & theStream);

		/****************** Read ******************/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a shape from <thefile> and returns it in <theshape>.

Parameters
----------
theShape: TopoDS_Shape
theFile: char *

Returns
-------
bool
") Read;
		static Standard_Boolean Read(TopoDS_Shape & theShape, const char * theFile);

		/****************** Write ******************/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes <theshape> on <thestream> in binary format.

Parameters
----------
theShape: TopoDS_Shape
theStream: Standard_OStream

Returns
-------
None
") Write;
		static void Write(const TopoDS_Shape & theShape, Standard_OStream & theStream);

		/****************** Write ******************/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes <theshape> in <thefile>.

Parameters
----------
theShape: TopoDS_Shape
theFile: char *

Returns
-------
bool
") Write;
		static Standard_Boolean Write(const TopoDS_Shape & theShape, const char * theFile);

};


%extend BinTools {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class BinTools_Curve2dSet *
****************************/
class BinTools_Curve2dSet {
	public:
		/****************** Add ******************/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new curve in the set and returns its index.

Parameters
----------
C: Geom2d_Curve

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom2d_Curve> & C);

		/****************** BinTools_Curve2dSet ******************/
		%feature("compactdefaultargs") BinTools_Curve2dSet;
		%feature("autodoc", "Returns an empty set of curves.

Returns
-------
None
") BinTools_Curve2dSet;
		 BinTools_Curve2dSet();

		/****************** Clear ******************/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Curve2d ******************/
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "Returns the curve of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom2d_Curve>
") Curve2d;
		opencascade::handle<Geom2d_Curve> Curve2d(const Standard_Integer I);

		/****************** Index ******************/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
C: Geom2d_Curve

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom2d_Curve> & C);


            %feature("autodoc", "1");
            %extend{
                void ReadFromString(std::string src) {
                std::stringstream s(src);
                self->Read(s);}
            };
		/****************** ReadCurve2d ******************/
		%feature("compactdefaultargs") ReadCurve2d;
		%feature("autodoc", "Reads the curve from the stream. the curve is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
C: Geom2d_Curve

Returns
-------
Standard_IStream
") ReadCurve2d;
		static Standard_IStream & ReadCurve2d(Standard_IStream & IS, opencascade::handle<Geom2d_Curve> & C);


        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
		/****************** WriteCurve2d ******************/
		%feature("compactdefaultargs") WriteCurve2d;
		%feature("autodoc", "Dumps the curve on the binary stream, that can be read back.

Parameters
----------
C: Geom2d_Curve
OS: Standard_OStream

Returns
-------
None
") WriteCurve2d;
		static void WriteCurve2d(const opencascade::handle<Geom2d_Curve> & C, Standard_OStream & OS);

};


%extend BinTools_Curve2dSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class BinTools_CurveSet *
**************************/
class BinTools_CurveSet {
	public:
		/****************** Add ******************/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new curve in the set and returns its index.

Parameters
----------
C: Geom_Curve

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom_Curve> & C);

		/****************** BinTools_CurveSet ******************/
		%feature("compactdefaultargs") BinTools_CurveSet;
		%feature("autodoc", "Returns an empty set of curves.

Returns
-------
None
") BinTools_CurveSet;
		 BinTools_CurveSet();

		/****************** Clear ******************/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Curve ******************/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "Returns the curve of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom_Curve>
") Curve;
		opencascade::handle<Geom_Curve> Curve(const Standard_Integer I);

		/****************** Index ******************/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
C: Geom_Curve

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom_Curve> & C);


            %feature("autodoc", "1");
            %extend{
                void ReadFromString(std::string src) {
                std::stringstream s(src);
                self->Read(s);}
            };
		/****************** ReadCurve ******************/
		%feature("compactdefaultargs") ReadCurve;
		%feature("autodoc", "Reads the curve from the stream. the curve is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
C: Geom_Curve

Returns
-------
Standard_IStream
") ReadCurve;
		static Standard_IStream & ReadCurve(Standard_IStream & IS, opencascade::handle<Geom_Curve> & C);


        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
		/****************** WriteCurve ******************/
		%feature("compactdefaultargs") WriteCurve;
		%feature("autodoc", "Dumps the curve on the stream in binary format that can be read back.

Parameters
----------
C: Geom_Curve
OS: Standard_OStream

Returns
-------
None
") WriteCurve;
		static void WriteCurve(const opencascade::handle<Geom_Curve> & C, Standard_OStream & OS);

};


%extend BinTools_CurveSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class BinTools_LocationSet *
*****************************/
class BinTools_LocationSet {
	public:
		/****************** Add ******************/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new location in the set and returns its index.

Parameters
----------
L: TopLoc_Location

Returns
-------
int
") Add;
		Standard_Integer Add(const TopLoc_Location & L);

		/****************** BinTools_LocationSet ******************/
		%feature("compactdefaultargs") BinTools_LocationSet;
		%feature("autodoc", "Returns an empty set of locations.

Returns
-------
None
") BinTools_LocationSet;
		 BinTools_LocationSet();

		/****************** Clear ******************/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Index ******************/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
L: TopLoc_Location

Returns
-------
int
") Index;
		Standard_Integer Index(const TopLoc_Location & L);

		/****************** Location ******************/
		%feature("compactdefaultargs") Location;
		%feature("autodoc", "Returns the location of index <i>.

Parameters
----------
I: int

Returns
-------
TopLoc_Location
") Location;
		const TopLoc_Location & Location(const Standard_Integer I);

		/****************** NbLocations ******************/
		%feature("compactdefaultargs") NbLocations;
		%feature("autodoc", "Returns number of locations.

Returns
-------
int
") NbLocations;
		Standard_Integer NbLocations();


            %feature("autodoc", "1");
            %extend{
                void ReadFromString(std::string src) {
                std::stringstream s(src);
                self->Read(s);}
            };

        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
};


%extend BinTools_LocationSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class BinTools_ShapeSet *
**************************/
class BinTools_ShapeSet {
	public:
		/****************** Add ******************/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Stores <s> and its sub-shape. returns the index of <s>. the method addgeometry is called on each sub-shape.

Parameters
----------
S: TopoDS_Shape

Returns
-------
int
") Add;
		Standard_Integer Add(const TopoDS_Shape & S);

		/****************** AddGeometry ******************/
		%feature("compactdefaultargs") AddGeometry;
		%feature("autodoc", "Stores the goemetry of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") AddGeometry;
		virtual void AddGeometry(const TopoDS_Shape & S);

		/****************** AddShapes ******************/
		%feature("compactdefaultargs") AddShapes;
		%feature("autodoc", "Inserts the shape <s2> in the shape <s1>.

Parameters
----------
S1: TopoDS_Shape
S2: TopoDS_Shape

Returns
-------
None
") AddShapes;
		virtual void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape & S2);

		/****************** BinTools_ShapeSet ******************/
		%feature("compactdefaultargs") BinTools_ShapeSet;
		%feature("autodoc", "Builds an empty shapeset. parameter <iswithtriangles> is added for xml persistence.

Parameters
----------
isWithTriangles: bool,optional
	default value is Standard_False

Returns
-------
None
") BinTools_ShapeSet;
		 BinTools_ShapeSet(const Standard_Boolean isWithTriangles = Standard_False);

		/****************** ChangeLocations ******************/
		%feature("compactdefaultargs") ChangeLocations;
		%feature("autodoc", "No available documentation.

Returns
-------
BinTools_LocationSet
") ChangeLocations;
		BinTools_LocationSet & ChangeLocations();

		/****************** Clear ******************/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		virtual void Clear();

		/****************** FormatNb ******************/
		%feature("compactdefaultargs") FormatNb;
		%feature("autodoc", "Two formats available for the moment: first: does not write curveonsurface uv points into the file on reading calls check() method. second: stores curveonsurface uv points. on reading format is recognized from version string.

Returns
-------
int
") FormatNb;
		Standard_Integer FormatNb();

		/****************** Index ******************/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
int
") Index;
		Standard_Integer Index(const TopoDS_Shape & S);

		/****************** IsWithTriangles ******************/
		%feature("compactdefaultargs") IsWithTriangles;
		%feature("autodoc", "Return true if shape should be stored with triangles.

Returns
-------
bool
") IsWithTriangles;
		Standard_Boolean IsWithTriangles();

		/****************** Locations ******************/
		%feature("compactdefaultargs") Locations;
		%feature("autodoc", "No available documentation.

Returns
-------
BinTools_LocationSet
") Locations;
		const BinTools_LocationSet & Locations();

		/****************** NbShapes ******************/
		%feature("compactdefaultargs") NbShapes;
		%feature("autodoc", "Returns number of shapes read from file.

Returns
-------
int
") NbShapes;
		Standard_Integer NbShapes();


            %feature("autodoc", "1");
            %extend{
                void ReadFromString(std::string src) {
                std::stringstream s(src);
                self->Read(s);}
            };
		/****************** Read ******************/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads from <is> a shape and returns it in s. <nbshapes> is the number of tshapes in the set.

Parameters
----------
S: TopoDS_Shape
IS: Standard_IStream
NbShapes: int

Returns
-------
None
") Read;
		virtual void Read(TopoDS_Shape & S, Standard_IStream & IS, const Standard_Integer NbShapes);


            %feature("autodoc", "1");
            %extend{
                void ReadGeometryFromString(std::string src) {
                std::stringstream s(src);
                self->ReadGeometry(s);}
            };
		/****************** ReadGeometry ******************/
		%feature("compactdefaultargs") ReadGeometry;
		%feature("autodoc", "Reads the geometry of a shape of type <t> from the stream <is> and returns it in <s>.

Parameters
----------
T: TopAbs_ShapeEnum
IS: Standard_IStream
S: TopoDS_Shape

Returns
-------
None
") ReadGeometry;
		virtual void ReadGeometry(const TopAbs_ShapeEnum T, Standard_IStream & IS, TopoDS_Shape & S);


            %feature("autodoc", "1");
            %extend{
                void ReadPolygon3DFromString(std::string src) {
                std::stringstream s(src);
                self->ReadPolygon3D(s);}
            };

            %feature("autodoc", "1");
            %extend{
                void ReadPolygonOnTriangulationFromString(std::string src) {
                std::stringstream s(src);
                self->ReadPolygonOnTriangulation(s);}
            };

            %feature("autodoc", "1");
            %extend{
                void ReadTriangulationFromString(std::string src) {
                std::stringstream s(src);
                self->ReadTriangulation(s);}
            };
		/****************** SetFormatNb ******************/
		%feature("compactdefaultargs") SetFormatNb;
		%feature("autodoc", "No available documentation.

Parameters
----------
theFormatNb: int

Returns
-------
None
") SetFormatNb;
		void SetFormatNb(const Standard_Integer theFormatNb);

		/****************** SetWithTriangles ******************/
		%feature("compactdefaultargs") SetWithTriangles;
		%feature("autodoc", "Define if shape will be stored with triangles. ignored (always written) if face defines only triangulation (no surface).

Parameters
----------
isWithTriangles: bool

Returns
-------
None
") SetWithTriangles;
		void SetWithTriangles(const Standard_Boolean isWithTriangles);

		/****************** Shape ******************/
		%feature("compactdefaultargs") Shape;
		%feature("autodoc", "Returns the sub-shape of index <i>.

Parameters
----------
I: int

Returns
-------
TopoDS_Shape
") Shape;
		const TopoDS_Shape Shape(const Standard_Integer I);


        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
		/****************** Write ******************/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes on <os> the shape <s>. writes the orientation, the index of the tshape and the index of the location.

Parameters
----------
S: TopoDS_Shape
OS: Standard_OStream

Returns
-------
None
") Write;
		virtual void Write(const TopoDS_Shape & S, Standard_OStream & OS);


        %feature("autodoc", "1");
        %extend{
            std::string WriteGeometryToString() {
            std::stringstream s;
            self->WriteGeometry(s);
            return s.str();}
        };
		/****************** WriteGeometry ******************/
		%feature("compactdefaultargs") WriteGeometry;
		%feature("autodoc", "Writes the geometry of <s> on the stream <os> in a binary format that can be read back by read.

Parameters
----------
S: TopoDS_Shape
OS: Standard_OStream

Returns
-------
None
") WriteGeometry;
		virtual void WriteGeometry(const TopoDS_Shape & S, Standard_OStream & OS);


        %feature("autodoc", "1");
        %extend{
            std::string WritePolygon3DToString() {
            std::stringstream s;
            self->WritePolygon3D(s);
            return s.str();}
        };

        %feature("autodoc", "1");
        %extend{
            std::string WritePolygonOnTriangulationToString() {
            std::stringstream s;
            self->WritePolygonOnTriangulation(s);
            return s.str();}
        };

        %feature("autodoc", "1");
        %extend{
            std::string WriteTriangulationToString() {
            std::stringstream s;
            self->WriteTriangulation(s);
            return s.str();}
        };
};


%extend BinTools_ShapeSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class BinTools_SurfaceSet *
****************************/
class BinTools_SurfaceSet {
	public:
		/****************** Add ******************/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Incorporate a new surface in the set and returns its index.

Parameters
----------
S: Geom_Surface

Returns
-------
int
") Add;
		Standard_Integer Add(const opencascade::handle<Geom_Surface> & S);

		/****************** BinTools_SurfaceSet ******************/
		%feature("compactdefaultargs") BinTools_SurfaceSet;
		%feature("autodoc", "Returns an empty set of surfaces.

Returns
-------
None
") BinTools_SurfaceSet;
		 BinTools_SurfaceSet();

		/****************** Clear ******************/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Index ******************/
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "Returns the index of <l>.

Parameters
----------
S: Geom_Surface

Returns
-------
int
") Index;
		Standard_Integer Index(const opencascade::handle<Geom_Surface> & S);


            %feature("autodoc", "1");
            %extend{
                void ReadFromString(std::string src) {
                std::stringstream s(src);
                self->Read(s);}
            };
		/****************** ReadSurface ******************/
		%feature("compactdefaultargs") ReadSurface;
		%feature("autodoc", "Reads the surface from the stream. the surface is assumed to have been written with the write method.

Parameters
----------
IS: Standard_IStream
S: Geom_Surface

Returns
-------
Standard_IStream
") ReadSurface;
		static Standard_IStream & ReadSurface(Standard_IStream & IS, opencascade::handle<Geom_Surface> & S);

		/****************** Surface ******************/
		%feature("compactdefaultargs") Surface;
		%feature("autodoc", "Returns the surface of index <i>.

Parameters
----------
I: int

Returns
-------
opencascade::handle<Geom_Surface>
") Surface;
		opencascade::handle<Geom_Surface> Surface(const Standard_Integer I);


        %feature("autodoc", "1");
        %extend{
            std::string WriteToString() {
            std::stringstream s;
            self->Write(s);
            return s.str();}
        };
		/****************** WriteSurface ******************/
		%feature("compactdefaultargs") WriteSurface;
		%feature("autodoc", "Dumps the surface on the stream in binary format that can be read back.

Parameters
----------
S: Geom_Surface
OS: Standard_OStream

Returns
-------
None
") WriteSurface;
		static void WriteSurface(const opencascade::handle<Geom_Surface> & S, Standard_OStream & OS);

};


%extend BinTools_SurfaceSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/* harray1 classes */
/* harray2 classes */
/* hsequence classes */
