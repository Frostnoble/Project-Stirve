/// Script Functions


function perlin_noise(_x, _y = 100.213, _z = 450.4215) {
	
	#region //doubled perm table
	static _p = [
		151,160,137,91,90,15,
		131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
		190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
		88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
		77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
		102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
		135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
		5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
		223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
		129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
		251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
		49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
		138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180,
		151,160,137,91,90,15,
		131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
		190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
		88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
		77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
		102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
		135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
		5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
		223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
		129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
		251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
		49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
		138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180
	];
	#endregion

    static _fade = function(_t) {
        return _t * _t * _t * (_t * (_t * 6 - 15) + 10);
    }

	static _lerp = function(_t, _a, _b) { 
		return _a + _t * (_b - _a); 
	}

    static _grad = function(_hash, _x, _y, _z) {
        var _h, _u, _v;
        _h = _hash & 15;                       // CONVERT 4 BITS OF HASH CODE
        _u = (_h < 8) ? _x : _y;                 // INTO 12 GRADIENT DIRECTIONS.
        if (_h < 4) {
            _v = _y;
        } else if ((_h == 12) || (_h == 14)) {
            _v = _x;
        } else {
            _v = _z;
        }
		if ((_h & 1) != 0) {
			_u = -_u;
		}
		if ((_h & 2) != 0) {
			_v = -_v;
		}		
        return _u + _v;
    }

    var _X, _Y, _Z;
    _X = floor(_x);
    _Y = floor(_y);
    _Z = floor(_z);
    
    _x -= _X;
    _y -= _Y;
    _z -= _Z;
    
    _X = _X & 255;
    _Y = _Y & 255;
    _Z = _Z & 255;
    
    var _u, _v, _w;
    _u = _fade(_x);
    _v = _fade(_y);
    _w = _fade(_z);
    
    var A, AA, AB, B, BA, BB;
    A  = _p[_X]+_Y;
    AA = _p[A]+_Z;
    AB = _p[A+1]+_Z;
    B  = _p[_X+1]+_Y;
    BA = _p[B]+_Z;
    BB = _p[B+1]+_Z;

	//returns a number between -1 and 1
    return _lerp(_w, _lerp(_v, _lerp(_u,_grad(_p[AA  ], _x  , _y  , _z   ),  // AND ADD
										_grad(_p[BA  ], _x-1, _y  , _z   )), // BLENDED
                             _lerp(_u,	_grad(_p[AB  ], _x  , _y-1, _z   ),  // RESULTS
										_grad(_p[BB  ], _x-1, _y-1, _z   ))),// FROM  8
                    _lerp(_v, _lerp(_u,	_grad(_p[AA+1], _x  , _y  , _z-1 ),  // CORNERS
										_grad(_p[BA+1], _x-1, _y  , _z-1 )), // OF CUBE
                             _lerp(_u,	_grad(_p[AB+1], _x  , _y-1, _z-1 ),
										_grad(_p[BB+1], _x-1, _y-1, _z-1 )))); 

}
	
//map a value from one range to another
function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}


//aproach a value
function approach_value(_start, _end, _shift) {
    if (_start < _end) {
        return min(_start + _shift, _end); 
    } else {
        return max(_start - _shift, _end);
    }
}


//true modulo
function modulo(_a, _b) {
	return (((_a % _b) + _b) % _b);
}	

function FastNoise(nx, ny, nbOctave) {

	var result=0;    
	var frequence256=256;
	var sx=floor((nx)*frequence256);
	var sy=floor((ny)*frequence256);
	var octave=nbOctave;  
	while(octave!=0)
	{
	    var bX=sx & $FF;
	    var bY=sy & $FF;
	    var sxp=sx>>8;
	    var syp=sy>>8;
       
	    //Compute noise for each corner of current cell
	    var Y1376312589_00=syp*1376312589;
	    var Y1376312589_01=Y1376312589_00+1376312589;
	    var XY1376312589_00=sxp+Y1376312589_00;
	    var XY1376312589_10=XY1376312589_00+1;
	    var XY1376312589_01=sxp+Y1376312589_01;
	    var XY1376312589_11=XY1376312589_01+1;
	    var XYBASE_00=(XY1376312589_00<<13)^XY1376312589_00;
	    var XYBASE_10=(XY1376312589_10<<13)^XY1376312589_10;
	    var XYBASE_01=(XY1376312589_01<<13)^XY1376312589_01;
	    var XYBASE_11=(XY1376312589_11<<13)^XY1376312589_11;
	    var alt1=(XYBASE_00 * (XYBASE_00 * XYBASE_00 * 15731 + 789221) + 1376312589) ;
	    var alt2=(XYBASE_10 * (XYBASE_10 * XYBASE_10 * 15731 + 789221) + 1376312589) ;
	    var alt3=(XYBASE_01 * (XYBASE_01 * XYBASE_01 * 15731 + 789221) + 1376312589) ;
	    var alt4=(XYBASE_11 * (XYBASE_11 * XYBASE_11 * 15731 + 789221) + 1376312589) ;
       
	    /*
	    *NOTE : on  for true grandiant noise uncomment following block
	    * for true gradiant we need to perform scalar product here, gradiant vector are created/deducted using
	    * the above pseudo random values (alt1...alt4) : by cutting thoses values in twice values to get for each a fixed x,y vector
	    * gradX1= alt1&0xFF
	    * gradY1= (alt1&0xFF00)>>8
	    *
	    * the last part of the PRN (alt1&0xFF0000)>>8 is used as an offset to correct one of the gradiant problem wich is zero on cell edge
	    *
	    * source vector (sXN;sYN) for scalar product are computed using (bX,bY)
	    *
	    * each four values  must be replaced by the result of the following
	    * altN=(gradXN;gradYN) scalar (sXN;sYN)
	    *
	    * all the rest of the code (interpolation+accumulation) is identical for value & gradiant noise
	    */
         
         
	    /*START BLOCK FOR TRUE GRADIANT NOISE*/
       
	    var grad1X=(alt1 & $FF)-128;
	    var grad1Y=((alt1 >> 8) & $FF)-128;
	    var grad2X=(alt2 & $FF)-128;
	    var grad2Y=((alt2 >> 8) & $FF)-128;
	    var grad3X=(alt3 & $FF)-128;
	    var grad3Y=((alt3 >> 8) & $FF)-128;
	    var grad4X=(alt4 & $FF)-128;
	    var grad4Y=((alt4 >> 8) & $FF)-128;
         
         
	    var sX1=bX>>1;
	    var sY1=bY>>1;
	    var sX2=128-sX1;
	    var sY2=sY1;
	    var sX3=sX1;
	    var sY3=128-sY1;
	    var sX4=128-sX1;
	    var sY4=128-sY1;
	    alt1=(grad1X*sX1+grad1Y*sY1)+16384+((alt1 & $FF0000)>>9); //to avoid seams to be 0 we use an offset
	    alt2=(grad2X*sX2+grad2Y*sY2)+16384+((alt2 & $FF0000)>>9);
	    alt3=(grad3X*sX3+grad3Y*sY3)+16384+((alt3 & $FF0000)>>9);
	    alt4=(grad4X*sX4+grad4Y*sY4)+16384+((alt4 & $FF0000)>>9);
         
	    /*END BLOCK FOR TRUE GRADIANT NOISE */
       
       
	    /*START BLOCK FOR VALUE NOISE*/
	    /*/ 
	    alt1 &= $FFFF;
	    alt2 &= $FFFF;
	    alt3 &= $FFFF;
	    alt4 &= $FFFF;
	    //*/
	    /*END BLOCK FOR VALUE NOISE*/
       
       
	    /*START BLOCK FOR LINEAR INTERPOLATION*/
	    //BiLinear interpolation
	    /*/
	    var f24=(bX*bY)>>8;
	    var f23=bX-f24;
	    var f14=bY-f24;
	    var f13=256-f14-f23-f24;
	    var val=(alt1*f13+alt2*f23+alt3*f14+alt4*f24);
	    //*/
	    /*END BLOCK FOR LINEAR INTERPOLATION*/
       
       
       
	    //BiCubic interpolation ( in the form alt(bX) = alt[n] - (3*bX^2 - 2*bX^3) * (alt[n] - alt[n+1]) )
	    /*START BLOCK FOR BICUBIC INTERPOLATION*/
	    //*/
	    var bX2=(bX*bX)>>8;
	    var bX3=(bX2*bX)>>8;
	    var _3bX2=3*bX2;
	    var _2bX3=2*bX3;
	    var alt12= alt1 - (((_3bX2 - _2bX3) * (alt1-alt2)) >> 8);
	    var alt34= alt3 - (((_3bX2 - _2bX3) * (alt3-alt4)) >> 8);
       
       
	    var bY2=(bY*bY)>>8;
	    var bY3=(bY2*bY)>>8;
	    var _3bY2=3*bY2;
	    var _2bY3=2*bY3;
	    var val= alt12 - (((_3bY2 - _2bY3) * (alt12-alt34)) >> 8);
       
	    val*=256;
	    //*/
	    /*END BLOCK FOR BICUBIC INTERPOLATION*/
       
       
	    //Accumulate in result
	    result+=(val<<octave);
       
	    octave--;
	    sx = sx << 1;
	    sy = sy << 1;
       
	}
	result = result >> (16+nbOctave+1);
	return result;
}