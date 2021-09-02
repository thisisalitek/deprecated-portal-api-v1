<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
	xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
	xmlns:ccts="urn:un:unece:uncefact:documentation:2"
	xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001"
	xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988"
	xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001"
	xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:link="http://www.xbrl.org/2003/linkbase"
	xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2"
	xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2"
	xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2"
	xmlns:xbrldi="http://xbrl.org/2006/xbrldi"
	xmlns:xbrli="http://www.xbrl.org/2003/instance"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
  <xsl:character-map name="a">
    <xsl:output-character character="&#128;" string=""/>
    <xsl:output-character character="&#129;" string=""/>
    <xsl:output-character character="&#130;" string=""/>
    <xsl:output-character character="&#131;" string=""/>
    <xsl:output-character character="&#132;" string=""/>
    <xsl:output-character character="&#133;" string=""/>
    <xsl:output-character character="&#134;" string=""/>
    <xsl:output-character character="&#135;" string=""/>
    <xsl:output-character character="&#136;" string=""/>
    <xsl:output-character character="&#137;" string=""/>
    <xsl:output-character character="&#138;" string=""/>
    <xsl:output-character character="&#139;" string=""/>
    <xsl:output-character character="&#140;" string=""/>
    <xsl:output-character character="&#141;" string=""/>
    <xsl:output-character character="&#142;" string=""/>
    <xsl:output-character character="&#143;" string=""/>
    <xsl:output-character character="&#144;" string=""/>
    <xsl:output-character character="&#145;" string=""/>
    <xsl:output-character character="&#146;" string=""/>
    <xsl:output-character character="&#147;" string=""/>
    <xsl:output-character character="&#148;" string=""/>
    <xsl:output-character character="&#149;" string=""/>
    <xsl:output-character character="&#150;" string=""/>
    <xsl:output-character character="&#151;" string=""/>
    <xsl:output-character character="&#152;" string=""/>
    <xsl:output-character character="&#153;" string=""/>
    <xsl:output-character character="&#154;" string=""/>
    <xsl:output-character character="&#155;" string=""/>
    <xsl:output-character character="&#156;" string=""/>
    <xsl:output-character character="&#157;" string=""/>
    <xsl:output-character character="&#158;" string=""/>
    <xsl:output-character character="&#159;" string=""/>
  </xsl:character-map>
  <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
  <xsl:output version="4.0" method="html" indent="no" encoding="UTF-8"
		doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
		doctype-system="http://www.w3.org/TR/html4/loose.dtd" use-character-maps="a"/>
  <xsl:param name="SV_OutputFormat" select="'HTML'"/>
  <xsl:variable name="XML" select="/"/>


  <xsl:template match="/">
    <html>
      <head>
        <script type="text/javascript">
          <![CDATA[var QRCode;!function(){function a(a){this.mode=c.MODE_8BIT_BYTE,this.data=a,this.parsedData=[];for(var b=[],d=0,e=this.data.length;e>d;d++){var f=this.data.charCodeAt(d);f>65536?(b[0]=240|(1835008&f)>>>18,b[1]=128|(258048&f)>>>12,b[2]=128|(4032&f)>>>6,b[3]=128|63&f):f>2048?(b[0]=224|(61440&f)>>>12,b[1]=128|(4032&f)>>>6,b[2]=128|63&f):f>128?(b[0]=192|(1984&f)>>>6,b[1]=128|63&f):b[0]=f,this.parsedData=this.parsedData.concat(b)}this.parsedData.length!=this.data.length&&(this.parsedData.unshift(191),this.parsedData.unshift(187),this.parsedData.unshift(239))}function b(a,b){this.typeNumber=a,this.errorCorrectLevel=b,this.modules=null,this.moduleCount=0,this.dataCache=null,this.dataList=[]}function i(a,b){if(void 0==a.length)throw new Error(a.length+"/"+b);for(var c=0;c<a.length&&0==a[c];)c++;this.num=new Array(a.length-c+b);for(var d=0;d<a.length-c;d++)this.num[d]=a[d+c]}function j(a,b){this.totalCount=a,this.dataCount=b}function k(){this.buffer=[],this.length=0}function m(){return"undefined"!=typeof CanvasRenderingContext2D}function n(){var a=!1,b=navigator.userAgent;return/android/i.test(b)&&(a=!0,aMat=b.toString().match(/android ([0-9]\.[0-9])/i),aMat&&aMat[1]&&(a=parseFloat(aMat[1]))),a}function r(a,b){for(var c=1,e=s(a),f=0,g=l.length;g>=f;f++){var h=0;switch(b){case d.L:h=l[f][0];break;case d.M:h=l[f][1];break;case d.Q:h=l[f][2];break;case d.H:h=l[f][3]}if(h>=e)break;c++}if(c>l.length)throw new Error("Too long data");return c}function s(a){var b=encodeURI(a).toString().replace(/\%[0-9a-fA-F]{2}/g,"a");return b.length+(b.length!=a?3:0)}a.prototype={getLength:function(){return this.parsedData.length},write:function(a){for(var b=0,c=this.parsedData.length;c>b;b++)a.put(this.parsedData[b],8)}},b.prototype={addData:function(b){var c=new a(b);this.dataList.push(c),this.dataCache=null},isDark:function(a,b){if(0>a||this.moduleCount<=a||0>b||this.moduleCount<=b)throw new Error(a+","+b);return this.modules[a][b]},getModuleCount:function(){return this.moduleCount},make:function(){this.makeImpl(!1,this.getBestMaskPattern())},makeImpl:function(a,c){this.moduleCount=4*this.typeNumber+17,this.modules=new Array(this.moduleCount);for(var d=0;d<this.moduleCount;d++){this.modules[d]=new Array(this.moduleCount);for(var e=0;e<this.moduleCount;e++)this.modules[d][e]=null}this.setupPositionProbePattern(0,0),this.setupPositionProbePattern(this.moduleCount-7,0),this.setupPositionProbePattern(0,this.moduleCount-7),this.setupPositionAdjustPattern(),this.setupTimingPattern(),this.setupTypeInfo(a,c),this.typeNumber>=7&&this.setupTypeNumber(a),null==this.dataCache&&(this.dataCache=b.createData(this.typeNumber,this.errorCorrectLevel,this.dataList)),this.mapData(this.dataCache,c)},setupPositionProbePattern:function(a,b){for(var c=-1;7>=c;c++)if(!(-1>=a+c||this.moduleCount<=a+c))for(var d=-1;7>=d;d++)-1>=b+d||this.moduleCount<=b+d||(this.modules[a+c][b+d]=c>=0&&6>=c&&(0==d||6==d)||d>=0&&6>=d&&(0==c||6==c)||c>=2&&4>=c&&d>=2&&4>=d?!0:!1)},getBestMaskPattern:function(){for(var a=0,b=0,c=0;8>c;c++){this.makeImpl(!0,c);var d=f.getLostPoint(this);(0==c||a>d)&&(a=d,b=c)}return b},createMovieClip:function(a,b,c){var d=a.createEmptyMovieClip(b,c),e=1;this.make();for(var f=0;f<this.modules.length;f++)for(var g=f*e,h=0;h<this.modules[f].length;h++){var i=h*e,j=this.modules[f][h];j&&(d.beginFill(0,100),d.moveTo(i,g),d.lineTo(i+e,g),d.lineTo(i+e,g+e),d.lineTo(i,g+e),d.endFill())}return d},setupTimingPattern:function(){for(var a=8;a<this.moduleCount-8;a++)null==this.modules[a][6]&&(this.modules[a][6]=0==a%2);for(var b=8;b<this.moduleCount-8;b++)null==this.modules[6][b]&&(this.modules[6][b]=0==b%2)},setupPositionAdjustPattern:function(){for(var a=f.getPatternPosition(this.typeNumber),b=0;b<a.length;b++)for(var c=0;c<a.length;c++){var d=a[b],e=a[c];if(null==this.modules[d][e])for(var g=-2;2>=g;g++)for(var h=-2;2>=h;h++)this.modules[d+g][e+h]=-2==g||2==g||-2==h||2==h||0==g&&0==h?!0:!1}},setupTypeNumber:function(a){for(var b=f.getBCHTypeNumber(this.typeNumber),c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[Math.floor(c/3)][c%3+this.moduleCount-8-3]=d}for(var c=0;18>c;c++){var d=!a&&1==(1&b>>c);this.modules[c%3+this.moduleCount-8-3][Math.floor(c/3)]=d}},setupTypeInfo:function(a,b){for(var c=this.errorCorrectLevel<<3|b,d=f.getBCHTypeInfo(c),e=0;15>e;e++){var g=!a&&1==(1&d>>e);6>e?this.modules[e][8]=g:8>e?this.modules[e+1][8]=g:this.modules[this.moduleCount-15+e][8]=g}for(var e=0;15>e;e++){var g=!a&&1==(1&d>>e);8>e?this.modules[8][this.moduleCount-e-1]=g:9>e?this.modules[8][15-e-1+1]=g:this.modules[8][15-e-1]=g}this.modules[this.moduleCount-8][8]=!a},mapData:function(a,b){for(var c=-1,d=this.moduleCount-1,e=7,g=0,h=this.moduleCount-1;h>0;h-=2)for(6==h&&h--;;){for(var i=0;2>i;i++)if(null==this.modules[d][h-i]){var j=!1;g<a.length&&(j=1==(1&a[g]>>>e));var k=f.getMask(b,d,h-i);k&&(j=!j),this.modules[d][h-i]=j,e--,-1==e&&(g++,e=7)}if(d+=c,0>d||this.moduleCount<=d){d-=c,c=-c;break}}}},b.PAD0=236,b.PAD1=17,b.createData=function(a,c,d){for(var e=j.getRSBlocks(a,c),g=new k,h=0;h<d.length;h++){var i=d[h];g.put(i.mode,4),g.put(i.getLength(),f.getLengthInBits(i.mode,a)),i.write(g)}for(var l=0,h=0;h<e.length;h++)l+=e[h].dataCount;if(g.getLengthInBits()>8*l)throw new Error("code length overflow. ("+g.getLengthInBits()+">"+8*l+")");for(g.getLengthInBits()+4<=8*l&&g.put(0,4);0!=g.getLengthInBits()%8;)g.putBit(!1);for(;;){if(g.getLengthInBits()>=8*l)break;if(g.put(b.PAD0,8),g.getLengthInBits()>=8*l)break;g.put(b.PAD1,8)}return b.createBytes(g,e)},b.createBytes=function(a,b){for(var c=0,d=0,e=0,g=new Array(b.length),h=new Array(b.length),j=0;j<b.length;j++){var k=b[j].dataCount,l=b[j].totalCount-k;d=Math.max(d,k),e=Math.max(e,l),g[j]=new Array(k);for(var m=0;m<g[j].length;m++)g[j][m]=255&a.buffer[m+c];c+=k;var n=f.getErrorCorrectPolynomial(l),o=new i(g[j],n.getLength()-1),p=o.mod(n);h[j]=new Array(n.getLength()-1);for(var m=0;m<h[j].length;m++){var q=m+p.getLength()-h[j].length;h[j][m]=q>=0?p.get(q):0}}for(var r=0,m=0;m<b.length;m++)r+=b[m].totalCount;for(var s=new Array(r),t=0,m=0;d>m;m++)for(var j=0;j<b.length;j++)m<g[j].length&&(s[t++]=g[j][m]);for(var m=0;e>m;m++)for(var j=0;j<b.length;j++)m<h[j].length&&(s[t++]=h[j][m]);return s};for(var c={MODE_NUMBER:1,MODE_ALPHA_NUM:2,MODE_8BIT_BYTE:4,MODE_KANJI:8},d={L:1,M:0,Q:3,H:2},e={PATTERN000:0,PATTERN001:1,PATTERN010:2,PATTERN011:3,PATTERN100:4,PATTERN101:5,PATTERN110:6,PATTERN111:7},f={PATTERN_POSITION_TABLE:[[],[6,18],[6,22],[6,26],[6,30],[6,34],[6,22,38],[6,24,42],[6,26,46],[6,28,50],[6,30,54],[6,32,58],[6,34,62],[6,26,46,66],[6,26,48,70],[6,26,50,74],[6,30,54,78],[6,30,56,82],[6,30,58,86],[6,34,62,90],[6,28,50,72,94],[6,26,50,74,98],[6,30,54,78,102],[6,28,54,80,106],[6,32,58,84,110],[6,30,58,86,114],[6,34,62,90,118],[6,26,50,74,98,122],[6,30,54,78,102,126],[6,26,52,78,104,130],[6,30,56,82,108,134],[6,34,60,86,112,138],[6,30,58,86,114,142],[6,34,62,90,118,146],[6,30,54,78,102,126,150],[6,24,50,76,102,128,154],[6,28,54,80,106,132,158],[6,32,58,84,110,136,162],[6,26,54,82,110,138,166],[6,30,58,86,114,142,170]],G15:1335,G18:7973,G15_MASK:21522,getBCHTypeInfo:function(a){for(var b=a<<10;f.getBCHDigit(b)-f.getBCHDigit(f.G15)>=0;)b^=f.G15<<f.getBCHDigit(b)-f.getBCHDigit(f.G15);return(a<<10|b)^f.G15_MASK},getBCHTypeNumber:function(a){for(var b=a<<12;f.getBCHDigit(b)-f.getBCHDigit(f.G18)>=0;)b^=f.G18<<f.getBCHDigit(b)-f.getBCHDigit(f.G18);return a<<12|b},getBCHDigit:function(a){for(var b=0;0!=a;)b++,a>>>=1;return b},getPatternPosition:function(a){return f.PATTERN_POSITION_TABLE[a-1]},getMask:function(a,b,c){switch(a){case e.PATTERN000:return 0==(b+c)%2;case e.PATTERN001:return 0==b%2;case e.PATTERN010:return 0==c%3;case e.PATTERN011:return 0==(b+c)%3;case e.PATTERN100:return 0==(Math.floor(b/2)+Math.floor(c/3))%2;case e.PATTERN101:return 0==b*c%2+b*c%3;case e.PATTERN110:return 0==(b*c%2+b*c%3)%2;case e.PATTERN111:return 0==(b*c%3+(b+c)%2)%2;default:throw new Error("bad maskPattern:"+a)}},getErrorCorrectPolynomial:function(a){for(var b=new i([1],0),c=0;a>c;c++)b=b.multiply(new i([1,g.gexp(c)],0));return b},getLengthInBits:function(a,b){if(b>=1&&10>b)switch(a){case c.MODE_NUMBER:return 10;case c.MODE_ALPHA_NUM:return 9;case c.MODE_8BIT_BYTE:return 8;case c.MODE_KANJI:return 8;default:throw new Error("mode:"+a)}else if(27>b)switch(a){case c.MODE_NUMBER:return 12;case c.MODE_ALPHA_NUM:return 11;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 10;default:throw new Error("mode:"+a)}else{if(!(41>b))throw new Error("type:"+b);switch(a){case c.MODE_NUMBER:return 14;case c.MODE_ALPHA_NUM:return 13;case c.MODE_8BIT_BYTE:return 16;case c.MODE_KANJI:return 12;default:throw new Error("mode:"+a)}}},getLostPoint:function(a){for(var b=a.getModuleCount(),c=0,d=0;b>d;d++)for(var e=0;b>e;e++){for(var f=0,g=a.isDark(d,e),h=-1;1>=h;h++)if(!(0>d+h||d+h>=b))for(var i=-1;1>=i;i++)0>e+i||e+i>=b||(0!=h||0!=i)&&g==a.isDark(d+h,e+i)&&f++;f>5&&(c+=3+f-5)}for(var d=0;b-1>d;d++)for(var e=0;b-1>e;e++){var j=0;a.isDark(d,e)&&j++,a.isDark(d+1,e)&&j++,a.isDark(d,e+1)&&j++,a.isDark(d+1,e+1)&&j++,(0==j||4==j)&&(c+=3)}for(var d=0;b>d;d++)for(var e=0;b-6>e;e++)a.isDark(d,e)&&!a.isDark(d,e+1)&&a.isDark(d,e+2)&&a.isDark(d,e+3)&&a.isDark(d,e+4)&&!a.isDark(d,e+5)&&a.isDark(d,e+6)&&(c+=40);for(var e=0;b>e;e++)for(var d=0;b-6>d;d++)a.isDark(d,e)&&!a.isDark(d+1,e)&&a.isDark(d+2,e)&&a.isDark(d+3,e)&&a.isDark(d+4,e)&&!a.isDark(d+5,e)&&a.isDark(d+6,e)&&(c+=40);for(var k=0,e=0;b>e;e++)for(var d=0;b>d;d++)a.isDark(d,e)&&k++;var l=Math.abs(100*k/b/b-50)/5;return c+=10*l}},g={glog:function(a){if(1>a)throw new Error("glog("+a+")");return g.LOG_TABLE[a]},gexp:function(a){for(;0>a;)a+=255;for(;a>=256;)a-=255;return g.EXP_TABLE[a]},EXP_TABLE:new Array(256),LOG_TABLE:new Array(256)},h=0;8>h;h++)g.EXP_TABLE[h]=1<<h;for(var h=8;256>h;h++)g.EXP_TABLE[h]=g.EXP_TABLE[h-4]^g.EXP_TABLE[h-5]^g.EXP_TABLE[h-6]^g.EXP_TABLE[h-8];for(var h=0;255>h;h++)g.LOG_TABLE[g.EXP_TABLE[h]]=h;i.prototype={get:function(a){return this.num[a]},getLength:function(){return this.num.length},multiply:function(a){for(var b=new Array(this.getLength()+a.getLength()-1),c=0;c<this.getLength();c++)for(var d=0;d<a.getLength();d++)b[c+d]^=g.gexp(g.glog(this.get(c))+g.glog(a.get(d)));return new i(b,0)},mod:function(a){if(this.getLength()-a.getLength()<0)return this;for(var b=g.glog(this.get(0))-g.glog(a.get(0)),c=new Array(this.getLength()),d=0;d<this.getLength();d++)c[d]=this.get(d);for(var d=0;d<a.getLength();d++)c[d]^=g.gexp(g.glog(a.get(d))+b);return new i(c,0).mod(a)}},j.RS_BLOCK_TABLE=[[1,26,19],[1,26,16],[1,26,13],[1,26,9],[1,44,34],[1,44,28],[1,44,22],[1,44,16],[1,70,55],[1,70,44],[2,35,17],[2,35,13],[1,100,80],[2,50,32],[2,50,24],[4,25,9],[1,134,108],[2,67,43],[2,33,15,2,34,16],[2,33,11,2,34,12],[2,86,68],[4,43,27],[4,43,19],[4,43,15],[2,98,78],[4,49,31],[2,32,14,4,33,15],[4,39,13,1,40,14],[2,121,97],[2,60,38,2,61,39],[4,40,18,2,41,19],[4,40,14,2,41,15],[2,146,116],[3,58,36,2,59,37],[4,36,16,4,37,17],[4,36,12,4,37,13],[2,86,68,2,87,69],[4,69,43,1,70,44],[6,43,19,2,44,20],[6,43,15,2,44,16],[4,101,81],[1,80,50,4,81,51],[4,50,22,4,51,23],[3,36,12,8,37,13],[2,116,92,2,117,93],[6,58,36,2,59,37],[4,46,20,6,47,21],[7,42,14,4,43,15],[4,133,107],[8,59,37,1,60,38],[8,44,20,4,45,21],[12,33,11,4,34,12],[3,145,115,1,146,116],[4,64,40,5,65,41],[11,36,16,5,37,17],[11,36,12,5,37,13],[5,109,87,1,110,88],[5,65,41,5,66,42],[5,54,24,7,55,25],[11,36,12],[5,122,98,1,123,99],[7,73,45,3,74,46],[15,43,19,2,44,20],[3,45,15,13,46,16],[1,135,107,5,136,108],[10,74,46,1,75,47],[1,50,22,15,51,23],[2,42,14,17,43,15],[5,150,120,1,151,121],[9,69,43,4,70,44],[17,50,22,1,51,23],[2,42,14,19,43,15],[3,141,113,4,142,114],[3,70,44,11,71,45],[17,47,21,4,48,22],[9,39,13,16,40,14],[3,135,107,5,136,108],[3,67,41,13,68,42],[15,54,24,5,55,25],[15,43,15,10,44,16],[4,144,116,4,145,117],[17,68,42],[17,50,22,6,51,23],[19,46,16,6,47,17],[2,139,111,7,140,112],[17,74,46],[7,54,24,16,55,25],[34,37,13],[4,151,121,5,152,122],[4,75,47,14,76,48],[11,54,24,14,55,25],[16,45,15,14,46,16],[6,147,117,4,148,118],[6,73,45,14,74,46],[11,54,24,16,55,25],[30,46,16,2,47,17],[8,132,106,4,133,107],[8,75,47,13,76,48],[7,54,24,22,55,25],[22,45,15,13,46,16],[10,142,114,2,143,115],[19,74,46,4,75,47],[28,50,22,6,51,23],[33,46,16,4,47,17],[8,152,122,4,153,123],[22,73,45,3,74,46],[8,53,23,26,54,24],[12,45,15,28,46,16],[3,147,117,10,148,118],[3,73,45,23,74,46],[4,54,24,31,55,25],[11,45,15,31,46,16],[7,146,116,7,147,117],[21,73,45,7,74,46],[1,53,23,37,54,24],[19,45,15,26,46,16],[5,145,115,10,146,116],[19,75,47,10,76,48],[15,54,24,25,55,25],[23,45,15,25,46,16],[13,145,115,3,146,116],[2,74,46,29,75,47],[42,54,24,1,55,25],[23,45,15,28,46,16],[17,145,115],[10,74,46,23,75,47],[10,54,24,35,55,25],[19,45,15,35,46,16],[17,145,115,1,146,116],[14,74,46,21,75,47],[29,54,24,19,55,25],[11,45,15,46,46,16],[13,145,115,6,146,116],[14,74,46,23,75,47],[44,54,24,7,55,25],[59,46,16,1,47,17],[12,151,121,7,152,122],[12,75,47,26,76,48],[39,54,24,14,55,25],[22,45,15,41,46,16],[6,151,121,14,152,122],[6,75,47,34,76,48],[46,54,24,10,55,25],[2,45,15,64,46,16],[17,152,122,4,153,123],[29,74,46,14,75,47],[49,54,24,10,55,25],[24,45,15,46,46,16],[4,152,122,18,153,123],[13,74,46,32,75,47],[48,54,24,14,55,25],[42,45,15,32,46,16],[20,147,117,4,148,118],[40,75,47,7,76,48],[43,54,24,22,55,25],[10,45,15,67,46,16],[19,148,118,6,149,119],[18,75,47,31,76,48],[34,54,24,34,55,25],[20,45,15,61,46,16]],j.getRSBlocks=function(a,b){var c=j.getRsBlockTable(a,b);if(void 0==c)throw new Error("bad rs block @ typeNumber:"+a+"/errorCorrectLevel:"+b);for(var d=c.length/3,e=[],f=0;d>f;f++)for(var g=c[3*f+0],h=c[3*f+1],i=c[3*f+2],k=0;g>k;k++)e.push(new j(h,i));return e},j.getRsBlockTable=function(a,b){switch(b){case d.L:return j.RS_BLOCK_TABLE[4*(a-1)+0];case d.M:return j.RS_BLOCK_TABLE[4*(a-1)+1];case d.Q:return j.RS_BLOCK_TABLE[4*(a-1)+2];case d.H:return j.RS_BLOCK_TABLE[4*(a-1)+3];default:return void 0}},k.prototype={get:function(a){var b=Math.floor(a/8);return 1==(1&this.buffer[b]>>>7-a%8)},put:function(a,b){for(var c=0;b>c;c++)this.putBit(1==(1&a>>>b-c-1))},getLengthInBits:function(){return this.length},putBit:function(a){var b=Math.floor(this.length/8);this.buffer.length<=b&&this.buffer.push(0),a&&(this.buffer[b]|=128>>>this.length%8),this.length++}};var l=[[17,14,11,7],[32,26,20,14],[53,42,32,24],[78,62,46,34],[106,84,60,44],[134,106,74,58],[154,122,86,64],[192,152,108,84],[230,180,130,98],[271,213,151,119],[321,251,177,137],[367,287,203,155],[425,331,241,177],[458,362,258,194],[520,412,292,220],[586,450,322,250],[644,504,364,280],[718,560,394,310],[792,624,442,338],[858,666,482,382],[929,711,509,403],[1003,779,565,439],[1091,857,611,461],[1171,911,661,511],[1273,997,715,535],[1367,1059,751,593],[1465,1125,805,625],[1528,1190,868,658],[1628,1264,908,698],[1732,1370,982,742],[1840,1452,1030,790],[1952,1538,1112,842],[2068,1628,1168,898],[2188,1722,1228,958],[2303,1809,1283,983],[2431,1911,1351,1051],[2563,1989,1423,1093],[2699,2099,1499,1139],[2809,2213,1579,1219],[2953,2331,1663,1273]],o=function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){function g(a,b){var c=document.createElementNS("http://www.w3.org/2000/svg",a);for(var d in b)b.hasOwnProperty(d)&&c.setAttribute(d,b[d]);return c}var b=this._htOption,c=this._el,d=a.getModuleCount();Math.floor(b.width/d),Math.floor(b.height/d),this.clear();var h=g("svg",{viewBox:"0 0 "+String(d)+" "+String(d),width:"100%",height:"100%",fill:b.colorLight});h.setAttributeNS("http://www.w3.org/2000/xmlns/","xmlns:xlink","http://www.w3.org/1999/xlink"),c.appendChild(h),h.appendChild(g("rect",{fill:b.colorDark,width:"1",height:"1",id:"template"}));for(var i=0;d>i;i++)for(var j=0;d>j;j++)if(a.isDark(i,j)){var k=g("use",{x:String(i),y:String(j)});k.setAttributeNS("http://www.w3.org/1999/xlink","href","#template"),h.appendChild(k)}},a.prototype.clear=function(){for(;this._el.hasChildNodes();)this._el.removeChild(this._el.lastChild)},a}(),p="svg"===document.documentElement.tagName.toLowerCase(),q=p?o:m()?function(){function a(){this._elImage.src=this._elCanvas.toDataURL("image/png"),this._elImage.style.display="block",this._elCanvas.style.display="none"}function d(a,b){var c=this;if(c._fFail=b,c._fSuccess=a,null===c._bSupportDataURI){var d=document.createElement("img"),e=function(){c._bSupportDataURI=!1,c._fFail&&_fFail.call(c)},f=function(){c._bSupportDataURI=!0,c._fSuccess&&c._fSuccess.call(c)};return d.onabort=e,d.onerror=e,d.onload=f,d.src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==",void 0}c._bSupportDataURI===!0&&c._fSuccess?c._fSuccess.call(c):c._bSupportDataURI===!1&&c._fFail&&c._fFail.call(c)}if(this._android&&this._android<=2.1){var b=1/window.devicePixelRatio,c=CanvasRenderingContext2D.prototype.drawImage;CanvasRenderingContext2D.prototype.drawImage=function(a,d,e,f,g,h,i,j){if("nodeName"in a&&/img/i.test(a.nodeName))for(var l=arguments.length-1;l>=1;l--)arguments[l]=arguments[l]*b;else"undefined"==typeof j&&(arguments[1]*=b,arguments[2]*=b,arguments[3]*=b,arguments[4]*=b);c.apply(this,arguments)}}var e=function(a,b){this._bIsPainted=!1,this._android=n(),this._htOption=b,this._elCanvas=document.createElement("canvas"),this._elCanvas.width=b.width,this._elCanvas.height=b.height,a.appendChild(this._elCanvas),this._el=a,this._oContext=this._elCanvas.getContext("2d"),this._bIsPainted=!1,this._elImage=document.createElement("img"),this._elImage.style.display="none",this._el.appendChild(this._elImage),this._bSupportDataURI=null};return e.prototype.draw=function(a){var b=this._elImage,c=this._oContext,d=this._htOption,e=a.getModuleCount(),f=d.width/e,g=d.height/e,h=Math.round(f),i=Math.round(g);b.style.display="none",this.clear();for(var j=0;e>j;j++)for(var k=0;e>k;k++){var l=a.isDark(j,k),m=k*f,n=j*g;c.strokeStyle=l?d.colorDark:d.colorLight,c.lineWidth=1,c.fillStyle=l?d.colorDark:d.colorLight,c.fillRect(m,n,f,g),c.strokeRect(Math.floor(m)+.5,Math.floor(n)+.5,h,i),c.strokeRect(Math.ceil(m)-.5,Math.ceil(n)-.5,h,i)}this._bIsPainted=!0},e.prototype.makeImage=function(){this._bIsPainted&&d.call(this,a)},e.prototype.isPainted=function(){return this._bIsPainted},e.prototype.clear=function(){this._oContext.clearRect(0,0,this._elCanvas.width,this._elCanvas.height),this._bIsPainted=!1},e.prototype.round=function(a){return a?Math.floor(1e3*a)/1e3:a},e}():function(){var a=function(a,b){this._el=a,this._htOption=b};return a.prototype.draw=function(a){for(var b=this._htOption,c=this._el,d=a.getModuleCount(),e=Math.floor(b.width/d),f=Math.floor(b.height/d),g=['<table style="border:0;border-collapse:collapse;">'],h=0;d>h;h++){g.push("<tr>");for(var i=0;d>i;i++)g.push('<td style="border:0;border-collapse:collapse;padding:0;margin:0;width:'+e+"px;height:"+f+"px;background-color:"+(a.isDark(h,i)?b.colorDark:b.colorLight)+';"></td>');g.push("</tr>")}g.push("</table>"),c.innerHTML=g.join("");var j=c.childNodes[0],k=(b.width-j.offsetWidth)/2,l=(b.height-j.offsetHeight)/2;k>0&&l>0&&(j.style.margin=l+"px "+k+"px")},a.prototype.clear=function(){this._el.innerHTML=""},a}();QRCode=function(a,b){if(this._htOption={width:256,height:256,typeNumber:4,colorDark:"#000000",colorLight:"#ffffff",correctLevel:d.H},"string"==typeof b&&(b={text:b}),b)for(var c in b)this._htOption[c]=b[c];"string"==typeof a&&(a=document.getElementById(a)),this._android=n(),this._el=a,this._oQRCode=null,this._oDrawing=new q(this._el,this._htOption),this._htOption.text&&this.makeCode(this._htOption.text)},QRCode.prototype.makeCode=function(a){this._oQRCode=new b(r(a,this._htOption.correctLevel),this._htOption.correctLevel),this._oQRCode.addData(a),this._oQRCode.make(),this._el.title=a,this._oDrawing.draw(this._oQRCode),this.makeImage()},QRCode.prototype.makeImage=function(){"function"==typeof this._oDrawing.makeImage&&(!this._android||this._android>=3)&&this._oDrawing.makeImage()},QRCode.prototype.clear=function(){this._oDrawing.clear()},QRCode.CorrectLevel=d}();]]>
        </script>
        <style type="text/css">
          body {
          background-color: #FFFFFF;
          font-family: 'Tahoma', "Times New Roman", Times, serif;
          font-size: 11px;
          color: #666666;
          }
          h1, h2 {
          padding-bottom: 3px;
          padding-top: 3px;
          margin-bottom: 5px;
          text-transform: uppercase;
          font-family: Arial, Helvetica, sans-serif;
          }
          h1 {
          font-size: 1.4em;
          text-transform:none;
          }
          h2 {
          font-size: 1em;
          color: brown;
          }
          h3 {
          font-size: 1em;
          color: #333333;
          text-align: justify;
          margin: 0;
          padding: 0;
          }
          h4 {
          font-size: 1.1em;
          font-style: bold;
          font-family: Arial, Helvetica, sans-serif;
          color: #000000;
          margin: 0;
          padding: 0;
          }
          hr {
          height:2px;
          color: #000000;
          background-color: #000000;
          border-bottom: 1px solid #000000;
          }
          p, ul, ol {
          margin-top: 1.5em;
          }
          ul, ol {
          margin-left: 3em;
          }
          blockquote {
          margin-left: 3em;
          margin-right: 3em;
          font-style: italic;
          }
          a {
          text-decoration: none;
          color: #70A300;
          }
          a:hover {
          border: none;
          color: #70A300;
          }
          #despatchTable {
          border-collapse:collapse;
          font-size:11px;
          float:right;
          border-color:gray;
          }
          #ettnTable {
          border-collapse:collapse;
          font-size:11px;
          border-color:gray;
          }
          #customerPartyTable {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #customerIDTableTd {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: gray;
          border-collapse: collapse;
          background-color:
          }
          #lineTable {
          border-width:2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          td.lineTableTd {
          border-width: 1px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          tr.lineTableTr {
          border-width: 1px;
          padding: 0px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #lineTableDummyTd {
          border-width: 1px;
          border-color:white;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          }
          td.lineTableBudgetTd {
          border-width: 2px;
          border-spacing:0px;
          padding: 1px;
          border-style: inset;
          border-color: black;
          background-color: white;
          -moz-border-radius:;
          }
          #notesTable {
          border-width: 2px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:
          }
          #notesTableTd {
          border-width: 0px;
          border-spacing:;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color: ;
          vertical-align: top;
          }
          table {
          border-spacing:0px;
          }
          #budgetContainerTable {
          border-width: 0px;
          border-spacing: 0px;
          border-style: inset;
          border-color: black;
          border-collapse: collapse;
          background-color:;
          }
          td {
          border-color:gray;
          }
        </style>
        <title>e-İrsaliye</title>
      </head>
      <body
				style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
        <xsl:for-each select="$XML">
          <table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
            <tbody>
              <tr valign="top">
                <td width="40%">
                  <br/>
                  <hr/>
                  <table align="center" border="0" width="100%">
                    <tbody>
                      <tr align="left">
                        <xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:if test="cac:PartyName">
                              <xsl:value-of select="cac:PartyName/cbc:Name"/>
                              <br/>
                            </xsl:if>
                            <xsl:if test="cac:Person">
                              <xsl:if test="cac:Person/cbc:Title">
                                <xsl:value-of  select="cac:Person/cbc:Title"/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <xsl:if test="cac:Person/cbc:FirstName">
                                <xsl:value-of  select="cac:Person/cbc:FirstName"/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <xsl:if test="cac:Person/cbc:MiddleName">
                                <xsl:value-of  select="cac:Person/cbc:MiddleName"/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <xsl:if test="cac:Person/cbc:FamilyName">
                                <xsl:value-of  select="cac:Person/cbc:FamilyName"/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <xsl:if test="cac:Person/cbc:NameSuffix">
                                <xsl:value-of  select="cac:Person/cbc:NameSuffix"/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                            </xsl:if>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <tr align="left">
                        <xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
                          <td align="left">
                            <xsl:for-each select="cac:PostalAddress">
                              <xsl:if test="cbc:StreetName!=''">
                                <xsl:for-each select="cbc:StreetName">
                                  <xsl:apply-templates/>
                                  <xsl:text>&#160;</xsl:text>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:if test="cbc:BuildingName!=''">
                                <xsl:for-each select="cbc:BuildingName">
                                  <xsl:apply-templates/>
                                  <xsl:text>&#160;</xsl:text>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:if test="cbc:BuildingNumber!=''">
                                <xsl:text>No:</xsl:text>
                                <xsl:for-each select="cbc:BuildingNumber">
                                  <xsl:apply-templates/>
                                </xsl:for-each>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:if>
                              <xsl:if test="cbc:PostalZone!=''">
                                <xsl:for-each select="cbc:PostalZone">
                                  <xsl:apply-templates/>
                                  <xsl:text>&#160;</xsl:text>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:for-each select="cbc:CitySubdivisionName">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                              <xsl:text> / </xsl:text>
                              <xsl:for-each select="cbc:CityName">
                                <xsl:apply-templates/>
                                <xsl:text>&#160;</xsl:text>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </xsl:for-each>
                      </tr>
                      <xsl:if test="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                        <xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
                          <xsl:for-each select="cac:Contact">
                            <tr align="left">
                              <td align="left">
                                <xsl:if test="cbc:Telephone!=''">
                                  <xsl:text>Tel: </xsl:text>
                                  <xsl:for-each select="cbc:Telephone">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="cbc:Telefax!=''">
                                  <xsl:text> Fax: </xsl:text>
                                  <xsl:for-each select="cbc:Telefax">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:if>
                              </td>
                            </tr>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:if>
                      <xsl:if test="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cbc:WebsiteURI!=''">
                        <xsl:for-each
                          select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cbc:WebsiteURI">
                          <tr align="left">
                            <td>
                              <xsl:text>Web Sitesi: </xsl:text>
                              <xsl:value-of select="."/>
                            </td>
                          </tr>
                        </xsl:for-each>
                      </xsl:if>
                      <xsl:if test="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail!=''">
                        <xsl:for-each
                          select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                          <tr align="left">
                            <td>
                              <xsl:text>E-Posta: </xsl:text>
                              <xsl:value-of select="."/>
                            </td>
                          </tr>
                        </xsl:for-each>
                      </xsl:if>
                      <tr align="left">
                        <xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
                          <xsl:if test="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name!=''">
                            <td align="left">
                              <xsl:text>Vergi Dairesi: </xsl:text>
                              <xsl:for-each select="cac:PartyTaxScheme">
                                <xsl:for-each select="cac:TaxScheme">
                                  <xsl:for-each select="cbc:Name">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:for-each>
                                <xsl:text>&#160; </xsl:text>
                              </xsl:for-each>
                            </td>
                          </xsl:if>
                        </xsl:for-each>
                      </tr>
                      <xsl:for-each
												select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification">
                        <tr align="left">
                          <td>
                            <xsl:if test="cbc:ID!=''">
                              <xsl:value-of select="cbc:ID/@schemeID"/>
                              <xsl:text>: </xsl:text>
                              <xsl:value-of select="cbc:ID"/>
                            </xsl:if>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <hr/>
                </td>
                <td width="20%" align="center" valign="middle">
                  <br/>
                  <br/>
                  <img style="width:91px;" align="middle" alt="E-Fatura Logo"
										src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/>

               <h1 align="center">
                    <span style="font-weight:bold; ">
                      <xsl:text>e-İRSALİYE</xsl:text>
                    </span>
                  </h1>
                  
                </td>
                <td width="30%">
				  <img style='max-width:300px;float:right;margin:0 0 10px 10px' align='right' alt='' src="data:image/jpeg;base64,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"/>
                </td>
              </tr>
              <tr valign="top">
                <td width="40%" align="right" valign="bottom">
                  <table id="customerPartyTable" align="left" border="0">
                    <tbody>
                      <tr style="height:71px; ">
                        <td>
                          <hr/>
                          <table align="center" border="0">
                            <tbody>
                              <tr>
                                <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                  <td style="width:469px; " align="left">
                                    <span style="font-weight:bold; ">
                                      <xsl:text>SAYIN</xsl:text>
                                    </span>
                                  </td>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:choose>
                                  <xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                    <xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
                                      <xsl:call-template name="Party_Title">
                                        <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                      </xsl:call-template>
                                    </xsl:for-each>
                                  </xsl:when>
                                  <xsl:otherwise>
                                    <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                      <xsl:call-template name="Party_Title">
                                        <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                      </xsl:call-template>
                                    </xsl:for-each>
                                  </xsl:otherwise>
                                </xsl:choose>
                              </tr>
                              <xsl:choose>
                                <xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
                                  <xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
                                    <tr>
                                      <xsl:call-template name="Party_Adress">
                                        <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                      </xsl:call-template>
                                    </tr>
                                    <xsl:call-template name="Party_Other">
                                      <xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
                                    </xsl:call-template>
                                  </xsl:for-each>
                                </xsl:when>
                                <xsl:otherwise>
                                  <xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
                                    <tr>
                                      <xsl:call-template name="Party_Adress">
                                        <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                      </xsl:call-template>
                                    </tr>
                                    <xsl:call-template name="Party_Other">
                                      <xsl:with-param name="PartyType">OTHER</xsl:with-param>
                                    </xsl:call-template>
                                  </xsl:for-each>
                                </xsl:otherwise>
                              </xsl:choose>
                            </tbody>
                          </table>
                          <hr/>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                </td>
                <td width="20%"/>
                <td width="60%" align="center" valign="bottom" colspan="3">
                  <table border="1" id="despatchTable">
                    <tbody>
                      <tr>
                        <td style="width:105px;" align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Özelleştirme No:</xsl:text>
                          </span>
                        </td>
                        <td style="width:110px;" align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:CustomizationID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Senaryo:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:ProfileID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>İrsaliye Tipi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:DespatchAdviceTypeCode">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>İrsaliye No:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:ID">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>İrsaliye Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:IssueDate">
                            <xsl:apply-templates select="."/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>İrsaliye Zamanı:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cbc:IssueTime">
                            <xsl:apply-templates select="."/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Sevk Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate">
                            <xsl:apply-templates select="."/>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr style="height:13px; ">
                        <td align="left">
                          <span style="font-weight:bold; ">
                            <xsl:text>Sevk Zamanı:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime">
                            <xsl:apply-templates select="."/>
                          </xsl:for-each>
                        </td>
                      </tr>

                      <xsl:if test="n1:DespatchAdvice/cac:OrderReference">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:ID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if	test="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
                        <tr style="height:13px">
                          <td align="left">
                            <span style="font-weight:bold; ">
                              <xsl:text>Sipariş Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
                              <xsl:apply-templates select="."/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
                </td>
              </tr>
              <tr align="left">
                <td align="left" valign="top" id="ettnTable">
                  <span style="font-weight:bold; ">
                    <xsl:text>ETTN:&#160;</xsl:text>
                  </span>
                  <xsl:for-each select="n1:DespatchAdvice/cbc:UUID">
                    <xsl:apply-templates/>
                  </xsl:for-each>
                </td>
              </tr>
            </tbody>
          </table>
          <div id="lineTableAligner">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </div>
          <table border="1" id="lineTable" width="800">
            <tbody>
              <tr class="lineTableTr">
                <td class="lineTableTd" style="width:5%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Sıra No</xsl:text>
                  </span>
                </td>
                <td class="lineTableTd" style="width:35%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Mal</xsl:text>
                  </span>
                </td>
                <td class="lineTableTd" style="width:10%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Miktar</xsl:text>
                  </span>
                </td>
                <td class="lineTableTd" style="width:10%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Birim Fiyat</xsl:text>
                  </span>
                </td>
                <td class="lineTableTd" style="width:20%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Sonra Gönderilecek Miktar</xsl:text>
                  </span>
                </td>
			        	<xsl:if test="sum(//n1:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount) &gt;0">
                <td class="lineTableTd" style="width:20%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Tutar</xsl:text>
                  </span>
                </td>
                </xsl:if>
              </tr>
			  
              <xsl:for-each select="//n1:DespatchAdvice/cac:DespatchLine">
                <xsl:apply-templates select="."/>
              </xsl:for-each>
				
            </tbody>
          </table>
        </xsl:for-each>
       <xsl:if test="//n1:DespatchAdvice/cac:Shipment/cac:GoodsItem/cbc:ValueAmount &gt;0">
        <table id="budgetContainerTable" width="800px">
          <tr align="right">
            <td/>
            <td class="lineTableBudgetTd" align="right" width="156px">
              <span style="font-weight:bold; ">
                <xsl:text>Toplam Tutar</xsl:text>
              </span>
            </td>
            <td class="lineTableBudgetTd" style="width:156px; " align="right">
              <xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:GoodsItem/cbc:ValueAmount">
                <xsl:call-template name="Curr_Type"/>
              </xsl:for-each>
            </td>
          </tr>
        </table>
        </xsl:if>
        <br/>

		<xsl:if test="//n1:DespatchAdvice/cac:AdditionalDocumentReference/cbc:DocumentType!='xslt' and //n1:DespatchAdvice/cac:AdditionalDocumentReference/cbc:DocumentType!='XSLT'">
			<table id="lineTable" width="800">
				<thead>
				  <tr>
					<td align="left">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;İlgili Dokümanlar</span>
					</td>
					<td align="left">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
					</td>
					<td align="left">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
					</td>
					<td align="left">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
					</td>
				  </tr>
				</thead>
				<tbody>
				  <tr align="left" class="lineTableTr">
					<td class="lineTableTd">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman No</span>
					</td>
					<td class="lineTableTd">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Tarih</span>
					</td>
					<td class="lineTableTd">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman Tipi</span>
					</td>
					<td class="lineTableTd">
					  <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklama</span>
					</td>
				  </tr>
				  <xsl:for-each select="//n1:DespatchAdvice/cac:AdditionalDocumentReference[cbc:DocumentType!='Xslt' and cbc:DocumentType!='XSLT' and cbc:DocumentType!='xslt']">
					<tr align="left" class="lineTableTr">
					  <td class="lineTableTd">
						&#160;&#160;&#160;&#160;&#160;
						<xsl:value-of select="./cbc:ID"/>
					  </td>
					  <td class="lineTableTd">
						&#160;&#160;&#160;&#160;&#160;
						<xsl:for-each select="./cbc:IssueDate">
						  <xsl:apply-templates select="."/>
						</xsl:for-each>
					  </td>
					  <td class="lineTableTd">
						&#160;&#160;&#160;&#160;&#160;
						<xsl:value-of select="./cbc:DocumentType"/>
					  </td>
					  <td class="lineTableTd">
						&#160;&#160;&#160;&#160;&#160;
						<xsl:value-of select="./cbc:DocumentDescription"/>
					  </td>
					</tr>
				  </xsl:for-each>
				</tbody>
			  </table>
		</xsl:if>

        <br/>
        <table id="notesTable" width="800" align="left">
		
          <thead>
            <tr>
              <td align="left">
                <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklamalar</span>
              </td>
              <td align="left">
                <span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Taşıyıcı Bilgileri</span>
              </td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <tr align="left">
              <td id="notesTableTd" height="100">
                <xsl:for-each select="//n1:DespatchAdvice/cbc:Note">
                  <b>&#160;&#160;&#160;&#160;&#160;&#160;Not: </b>
                  <xsl:value-of select="."/>
                  <br/>
                </xsl:for-each>
                &#160;&#160;&#160;&#160;&#160;&#160;asdfsadfasdfasdf
                <br/>
                <xsl:for-each select="//cac:SellerSupplierParty">
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı VKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='VKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
                    <br/>
                  </xsl:if>
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı TCKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='TCKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FirstName"/>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FamilyName"/>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="//cac:BuyerCustomerParty">
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı VKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='VKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
                    <br/>
                  </xsl:if>
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı TCKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='TCKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FirstName"/>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FamilyName"/>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="//cac:OriginatorCustomerParty">
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='VKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı VKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='VKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
                    <br/>
                  </xsl:if>
                  <xsl:if test="cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='TCKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı TCKN: </b>
                    <xsl:value-of select="cac:Party/cac:PartyIdentification[./cbc:ID[@schemeID='TCKN']]/cbc:ID"/>
                    <br/>
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı Ünvan: </b>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FirstName"/>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="cac:Party/cac:Person/cbc:FamilyName"/>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="//cac:DespatchSupplierParty/cac:DespatchContact/cbc:Name">
                  <b>&#160;&#160;&#160;&#160;&#160; Teslim Eden: </b>
                  <xsl:apply-templates/>
                  <xsl:text>&#160;</xsl:text>
                  <br/>
                </xsl:for-each>
              </td>
              <td id="notesTableTd" height="100">
                <xsl:for-each select="//cac:CarrierParty">
                  <xsl:if test="cac:PartyIdentification/cbc:ID[@schemeID = 'VKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160; Taşıyıcı Firma: </b>
                    <xsl:value-of select="./cac:PartyName/cbc:Name"/>
                    <xsl:text>,</xsl:text>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:text>VKN: </xsl:text>
                    <xsl:value-of select="./cac:PartyIdentification/cbc:ID"/>
                    <br/>
                  </xsl:if>
                  <xsl:if test="cac:PartyIdentification/cbc:ID[@schemeID = 'TCKN']">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160; Taşıyıcı Firma: </b>
                    <xsl:value-of select="./cac:Person/cbc:FirstName"/>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="./cac:Person/cbc:FamilyName"/>
                    <xsl:text>,</xsl:text>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:text>TCKN: </xsl:text>
                    <xsl:value-of select="./cac:PartyIdentification/cbc:ID"/>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:for-each select="//cac:ShipmentStage/cac:TransportMeans/cac:RoadTransport/cbc:LicensePlateID">
                  <b>&#160;&#160;&#160;&#160;&#160;&#160; Araç plaka numarası: </b>
                  <xsl:value-of select="."/>
                  <br/>
                </xsl:for-each>
                <xsl:for-each select="//cac:TransportHandlingUnit/cac:TransportEquipment/cbc:ID[@schemeID = 'DORSEPLAKA']">
                  <b>&#160;&#160;&#160;&#160;&#160;&#160; Dorse plaka numarası: </b>
                  <xsl:value-of select="."/>
                  <br/>
                </xsl:for-each>
                <xsl:for-each select="//cac:ShipmentStage/cac:DriverPerson">
                  <xsl:if	test="cbc:FirstName">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160; Şoför: </b>
                    <xsl:for-each select="cbc:FirstName">
                      <xsl:apply-templates/>
                      <xsl:text>&#160;</xsl:text>
                    </xsl:for-each>
                    <xsl:for-each select="cbc:FamilyName">
                      <xsl:apply-templates/>
                    </xsl:for-each>, TCKN:
                    <xsl:for-each select="cbc:NationalityID">
                      <xsl:apply-templates/>
                    </xsl:for-each>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
              </td>
              <td width="150" style="padding:10px">
                <div id="qrcode" style="width:140px;float:right;"></div>
                <div id="qrvalue" style="visibility: hidden;width:140px;height:140px;">
                  <xsl:for-each select="//n1:DespatchAdvice/cbc:UUID">
                    <xsl:if test=".!= ''">
                      <xsl:value-of select="."/>
                    </xsl:if>
                  </xsl:for-each>
                </div>
                <script type="text/javascript">
                  var qrcode = new QRCode(document.getElementById("qrcode"), {
                  width : 140,
                  height : 140
                  });

                  function makeCode (msg) {
                  var elText = document.getElementById("text");

                  qrcode.makeCode(msg);
                  }
                  makeCode(document.getElementById("qrvalue").innerHTML);
                </script>
              </td>
            </tr>
          </tbody>
        </table>
	  </body>
    </html>
  </xsl:template>
  <xsl:template match="//n1:DespatchAdvice/cac:DespatchLine">
    <tr class="lineTableTr">
      <td class="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cbc:ID"/>
      </td>
      <td class="lineTableTd">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="./cac:Item/cbc:Name"/>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of
					select="format-number(./cbc:DeliveredQuantity, '###.###,####', 'european')"/>
        <xsl:if test="./cbc:DeliveredQuantity/@unitCode">
          <xsl:for-each select="./cbc:DeliveredQuantity">
            <xsl:text> </xsl:text>
            <xsl:choose>
              <xsl:when test="@unitCode  = '26'">
                <xsl:text>ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'BX'">
                <xsl:text>Kutu</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LTR'">
                <xsl:text>lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'C62'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NIU'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KGM'">
                <xsl:text>kg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KJO'">
                <xsl:text>kJ</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GRM'">
                <xsl:text>g</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MGM'">
                <xsl:text>mg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NT'">
                <xsl:text>Net Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GT'">
                <xsl:text>Gross Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTR'">
                <xsl:text>m</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMT'">
                <xsl:text>mm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KTM'">
                <xsl:text>km</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MLT'">
                <xsl:text>ml</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMQ'">
                <xsl:text>mm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CLT'">
                <xsl:text>cl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMK'">
                <xsl:text>cm2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMQ'">
                <xsl:text>cm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMT'">
                <xsl:text>cm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTK'">
                <xsl:text>m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTQ'">
                <xsl:text>m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'DAY'">
                <xsl:text> Gün</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MON'">
                <xsl:text> Ay</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PA'">
                <xsl:text> Paket</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KWH'">
                <xsl:text> KWH</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'ANN'">
                <xsl:text> Yıl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'HUR'">
                <xsl:text> Saat</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D61'">
                <xsl:text> Dakika</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D62'">
                <xsl:text> Saniye</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CCT'">
                <xsl:text> Ton baş.taşıma kap.</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D30'">
                <xsl:text> Brüt kalori</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D40'">
                <xsl:text> 1000 lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LPA'">
                <xsl:text> saf alkol lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'B32'">
                <xsl:text> kg.m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NCL'">
                <xsl:text> hücre adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PR'">
                <xsl:text> Çift</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'R9'">
                <xsl:text> 1000 m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'SET'">
                <xsl:text> Set</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'T3'">
                <xsl:text> 1000 adet</xsl:text>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </xsl:if>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of
					select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
        <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID">
          <xsl:text> </xsl:text>
          <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
            <xsl:text>TL</xsl:text>
          </xsl:if>
          <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
            <xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/>
          </xsl:if>
        </xsl:if>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of
					select="format-number(./cbc:OutstandingQuantity, '###.###,####', 'european')"/>
        <xsl:if test="./cbc:OutstandingQuantity/@unitCode">
          <xsl:for-each select="./cbc:OutstandingQuantity">
            <xsl:text> </xsl:text>
            <xsl:choose>
              <xsl:when test="@unitCode  = '26'">
                <xsl:text>ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'BX'">
                <xsl:text>Kutu</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LTR'">
                <xsl:text>lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'C62'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NIU'">
                <xsl:text>Adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KGM'">
                <xsl:text>kg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KJO'">
                <xsl:text>kJ</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GRM'">
                <xsl:text>g</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MGM'">
                <xsl:text>mg</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NT'">
                <xsl:text>Net Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'GT'">
                <xsl:text>Gross Ton</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTR'">
                <xsl:text>m</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMT'">
                <xsl:text>mm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KTM'">
                <xsl:text>km</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MLT'">
                <xsl:text>ml</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MMQ'">
                <xsl:text>mm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CLT'">
                <xsl:text>cl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMK'">
                <xsl:text>cm2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMQ'">
                <xsl:text>cm3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CMT'">
                <xsl:text>cm</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTK'">
                <xsl:text>m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MTQ'">
                <xsl:text>m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'DAY'">
                <xsl:text> Gün</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'MON'">
                <xsl:text> Ay</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PA'">
                <xsl:text> Paket</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'KWH'">
                <xsl:text> KWH</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'ANN'">
                <xsl:text> Yıl</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'HUR'">
                <xsl:text> Saat</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D61'">
                <xsl:text> Dakika</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D62'">
                <xsl:text> Saniye</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'CCT'">
                <xsl:text> Ton baş.taşıma kap.</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D30'">
                <xsl:text> Brüt kalori</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'D40'">
                <xsl:text> 1000 lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'LPA'">
                <xsl:text> saf alkol lt</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'B32'">
                <xsl:text> kg.m2</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'NCL'">
                <xsl:text> hücre adet</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'PR'">
                <xsl:text> Çift</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'R9'">
                <xsl:text> 1000 m3</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'SET'">
                <xsl:text> Set</xsl:text>
              </xsl:when>
              <xsl:when test="@unitCode  = 'T3'">
                <xsl:text> 1000 adet</xsl:text>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </xsl:if>
      </td>
      <xsl:if test="sum(//n1:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount) &gt;0">
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of
					select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount, '###.##0,########', 'european')"/>
        <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID">
          <xsl:text> </xsl:text>
          <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRY&quot;">
            <xsl:text>TL</xsl:text>
          </xsl:if>
          <xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRY&quot;">
            <xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID"/>
          </xsl:if>
        </xsl:if>
      </td>
      </xsl:if>
    </tr>
  </xsl:template>
  <xsl:template match="//cbc:IssueDate">
    <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
  </xsl:template>
  <xsl:template match="//cbc:ActualDespatchDate">
    <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
  </xsl:template>
  <xsl:template match="//n1:DespatchAdvice">
    <tr class="lineTableTr">
      <td class="lineTableTd">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td class="lineTableTd">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
      <td class="lineTableTd" align="right">
        <xsl:text>&#160;</xsl:text>
      </td>
    </tr>
  </xsl:template>
  <xsl:template name="Party_Title" >
    <xsl:param name="PartyType" />
    <td style="width:469px; " align="left">
      <xsl:if test="cac:PartyName">
        <xsl:value-of select="cac:PartyName/cbc:Name"/>
        <br/>
      </xsl:if>
      <xsl:for-each select="cac:Person">
        <xsl:for-each select="cbc:Title">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:FirstName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:MiddleName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:FamilyName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:NameSuffix">
          <xsl:apply-templates/>
        </xsl:for-each>
        <xsl:if test="$PartyType='TAXFREE'">
          <br/>
          <xsl:text>Pasaport No: </xsl:text>
          <xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
          <br/>
          <xsl:text>Ülkesi: </xsl:text>
          <xsl:value-of select="cbc:NationalityID"/>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  <xsl:template name="Party_Adress" >
    <xsl:param name="PartyType" />
    <td style="width:469px; " align="left">
      <xsl:for-each select="cac:PostalAddress">
        <xsl:if test="cbc:StreetName!=''">
          <xsl:for-each select="cbc:StreetName">
            <xsl:apply-templates/>
            <xsl:text>&#160;</xsl:text>
          </xsl:for-each>
        </xsl:if>
        <xsl:if test="cbc:BuildingName!=''">
          <xsl:for-each select="cbc:BuildingName">
            <xsl:apply-templates/>
            <xsl:text>&#160;</xsl:text>
          </xsl:for-each>
        </xsl:if>
        <xsl:if test="cbc:BuildingNumber!=''">
          <xsl:for-each select="cbc:BuildingNumber">
            <xsl:text>No:</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>&#160;</xsl:text>
          </xsl:for-each>
        </xsl:if>
        <xsl:if test="cbc:Room!=''">
          <xsl:for-each select="cbc:Room">
            <xsl:text>Kapı No:</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>&#160;</xsl:text>
          </xsl:for-each>
        </xsl:if>
        <xsl:if test="cbc:PostalZone!=''">
          <xsl:for-each select="cbc:PostalZone">
            <xsl:apply-templates/>
            <xsl:text>&#160;</xsl:text>
          </xsl:for-each>
        </xsl:if>
        <xsl:for-each select="cbc:CitySubdivisionName">
          <xsl:apply-templates/>
          <xsl:text> / </xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cbc:CityName">
          <xsl:apply-templates/>
          <xsl:text>&#160;</xsl:text>
        </xsl:for-each>
        <xsl:if test="$PartyType='TAXFREE'">
          <br/>
          <xsl:value-of select="cac:Country/cbc:Name"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  <xsl:template name='Party_Other'>
    <xsl:param name="PartyType" />
    <xsl:if test="cbc:WebsiteURI!=''">
      <xsl:for-each select="cbc:WebsiteURI">
        <tr align="left">
          <td>
            <xsl:text>Web Sitesi: </xsl:text>
            <xsl:value-of select="."/>
          </td>
        </tr>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="cac:Contact/cbc:ElectronicMail!=''">
      <xsl:for-each select="cac:Contact/cbc:ElectronicMail">
        <tr align="left">
          <td>
            <xsl:text>E-Posta: </xsl:text>
            <xsl:value-of select="."/>
          </td>
        </tr>
      </xsl:for-each>
    </xsl:if>
    <xsl:for-each select="cac:Contact">
      <xsl:if test="cbc:Telephone!='' or cbc:Telefax!=''">
        <tr align="left">
          <td style="width:469px; " align="left">
            <xsl:if test="cbc:Telephone!=''">
              <xsl:for-each select="cbc:Telephone">
                <xsl:text>Tel: </xsl:text>
                <xsl:apply-templates/>
              </xsl:for-each>
            </xsl:if>
            <xsl:if test="cbc:Telefax!=''">
              <xsl:for-each select="cbc:Telefax">
                <xsl:text> Fax: </xsl:text>
                <xsl:apply-templates/>
              </xsl:for-each>
            </xsl:if>
            <xsl:text>&#160;</xsl:text>
          </td>
        </tr>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="$PartyType!='TAXFREE'">
      <xsl:if test="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name!=''">
        <xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
          <tr align="left">
            <td>
              <xsl:text>Vergi Dairesi: </xsl:text>
              <xsl:apply-templates/>
            </td>
          </tr>
        </xsl:for-each>
      </xsl:if>
      <xsl:for-each select="cac:PartyIdentification">
        <xsl:if test="cbc:ID!=''">
          <tr align="left">
            <td>
              <xsl:value-of select="cbc:ID/@schemeID"/>
              <xsl:text>: </xsl:text>
              <xsl:value-of select="cbc:ID"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="Curr_Type">
    <xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
    <xsl:if	test="@currencyID">
      <xsl:text> </xsl:text>
      <xsl:choose>
        <xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
          <xsl:text>TL</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@currencyID"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
