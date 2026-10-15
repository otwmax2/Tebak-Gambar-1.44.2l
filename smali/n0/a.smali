###### Class n0.a (n0.a)
.class public Ln0/a;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/a$b;,
        Ln0/a$d;,
        Ln0/a$c;,
        Ln0/a$e;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field static final C:[B

.field private static final D:[B

.field private static final E:[B

.field private static final F:[B

.field private static final G:[B

.field private static final H:[B

.field private static final I:[B

.field private static final J:[B

.field private static final K:[B

.field private static final L:[B

.field private static final M:[B

.field private static final N:[B

.field private static final O:[B

.field private static final P:[B

.field private static final Q:[B

.field private static final R:[B

.field private static final S:[B

.field private static final T:[B

.field private static final U:[B

.field private static final V:[B

.field private static W:Ljava/text/SimpleDateFormat;

.field static final X:[Ljava/lang/String;

.field static final Y:[I

.field static final Z:[B

.field private static final a0:[Ln0/a$d;

.field private static final b0:[Ln0/a$d;

.field private static final c0:[Ln0/a$d;

.field private static final d0:[Ln0/a$d;

.field private static final e0:[Ln0/a$d;

.field private static final f0:Ln0/a$d;

.field private static final g0:[Ln0/a$d;

.field private static final h0:[Ln0/a$d;

.field private static final i0:[Ln0/a$d;

.field private static final j0:[Ln0/a$d;

.field static final k0:[[Ln0/a$d;

.field private static final l0:[Ln0/a$d;

.field private static final m0:Ln0/a$d;

.field private static final n0:Ln0/a$d;

.field private static final o0:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ln0/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final p0:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln0/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final q0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final r0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final s0:Ljava/nio/charset/Charset;

.field static final t0:[B

.field private static final u0:[B

.field private static final v0:Ljava/util/regex/Pattern;

.field private static final w:Z

.field private static final w0:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/FileDescriptor;

.field private c:Landroid/content/res/AssetManager$AssetInputStream;

.field private d:I

.field private e:Z

.field private final f:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/nio/ByteOrder;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:[B

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ln0/a;->w:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ln0/a;->x:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 10
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ln0/a;->y:Ljava/util/List;

    new-array v3, v1, [I

    .line 11
    fill-array-data v3, :array_cd0

    sput-object v3, Ln0/a;->z:[I

    new-array v3, v4, [I

    aput v0, v3, v6

    .line 12
    sput-object v3, Ln0/a;->A:[I

    new-array v3, v4, [I

    aput v10, v3, v6

    .line 13
    sput-object v3, Ln0/a;->B:[I

    new-array v3, v1, [B

    .line 14
    fill-array-data v3, :array_cda

    sput-object v3, Ln0/a;->C:[B

    new-array v3, v0, [B

    .line 15
    fill-array-data v3, :array_ce0

    sput-object v3, Ln0/a;->D:[B

    new-array v3, v0, [B

    .line 16
    fill-array-data v3, :array_ce6

    sput-object v3, Ln0/a;->E:[B

    new-array v3, v0, [B

    .line 17
    fill-array-data v3, :array_cec

    sput-object v3, Ln0/a;->F:[B

    new-array v3, v7, [B

    .line 18
    fill-array-data v3, :array_cf2

    sput-object v3, Ln0/a;->G:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 19
    fill-array-data v12, :array_cfa

    sput-object v12, Ln0/a;->H:[B

    new-array v12, v10, [B

    .line 20
    fill-array-data v12, :array_d04

    sput-object v12, Ln0/a;->I:[B

    new-array v12, v0, [B

    .line 21
    fill-array-data v12, :array_d0c

    sput-object v12, Ln0/a;->J:[B

    new-array v12, v0, [B

    .line 22
    fill-array-data v12, :array_d12

    sput-object v12, Ln0/a;->K:[B

    new-array v12, v0, [B

    .line 23
    fill-array-data v12, :array_d18

    sput-object v12, Ln0/a;->L:[B

    new-array v12, v0, [B

    .line 24
    fill-array-data v12, :array_d1e

    sput-object v12, Ln0/a;->M:[B

    new-array v12, v0, [B

    .line 25
    fill-array-data v12, :array_d24

    sput-object v12, Ln0/a;->N:[B

    new-array v12, v0, [B

    .line 26
    fill-array-data v12, :array_d2a

    sput-object v12, Ln0/a;->O:[B

    new-array v12, v1, [B

    .line 27
    fill-array-data v12, :array_d30

    sput-object v12, Ln0/a;->P:[B

    .line 28
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    const-string v3, "VP8X"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->Q:[B

    .line 29
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8L"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->R:[B

    .line 30
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8 "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->S:[B

    .line 31
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->T:[B

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANMF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->U:[B

    .line 33
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "XMP "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Ln0/a;->V:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 34
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ln0/a;->X:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 35
    fill-array-data v12, :array_d36

    sput-object v12, Ln0/a;->Y:[I

    new-array v12, v10, [B

    .line 36
    fill-array-data v12, :array_d56

    sput-object v12, Ln0/a;->Z:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Ln0/a$d;

    .line 37
    new-instance v3, Ln0/a$d;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v10, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v7, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v4

    new-instance v3, Ln0/a$d;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v7, v10, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v8

    new-instance v3, Ln0/a$d;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v7, v10, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v1

    new-instance v3, Ln0/a$d;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v0

    new-instance v3, Ln0/a$d;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v14

    new-instance v3, Ln0/a$d;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v7, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v7, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v7, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v10, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "SamplesPerPixel"

    const/16 v7, 0x115

    invoke-direct {v3, v10, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "RowsPerStrip"

    const/16 v7, 0x116

    invoke-direct {v3, v10, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "StripByteCounts"

    const/16 v7, 0x117

    invoke-direct {v3, v10, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v7, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "YResolution"

    const/16 v7, 0x11b

    invoke-direct {v3, v10, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "PlanarConfiguration"

    const/16 v7, 0x11c

    invoke-direct {v3, v10, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "ResolutionUnit"

    const/16 v7, 0x128

    invoke-direct {v3, v10, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "TransferFunction"

    const/16 v7, 0x12d

    invoke-direct {v3, v10, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "Software"

    const/16 v7, 0x131

    invoke-direct {v3, v10, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "DateTime"

    const/16 v7, 0x132

    invoke-direct {v3, v10, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v3, v7, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v7, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v3, v7, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Ln0/a$d;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v10, v6, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v3, v6, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v3, v6, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v3, v6, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v3, v6, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v3, v6, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v6, v0, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v6, v14, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v6, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "ISO"

    invoke-direct {v3, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Ln0/a$d;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v6, v7, v4}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    sput-object v12, Ln0/a;->a0:[Ln0/a$d;

    const/16 v3, 0x4a

    new-array v3, v3, [Ln0/a$d;

    .line 38
    new-instance v6, Ln0/a$d;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v7, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Ln0/a$d;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v7, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v6, Ln0/a$d;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v8

    new-instance v6, Ln0/a$d;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v7, v10, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v1

    new-instance v6, Ln0/a$d;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v0

    new-instance v6, Ln0/a$d;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v7, v10, v4}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v14

    new-instance v6, Ln0/a$d;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v7, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Ln0/a$d;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v7, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v4, Ln0/a$d;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v6, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v6, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v6, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v6, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v6, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v6, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v6, v7, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Ln0/a$d;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v6, v7, v1, v0}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    sput-object v3, Ln0/a;->b0:[Ln0/a$d;

    const/16 v4, 0x20

    new-array v4, v4, [Ln0/a$d;

    .line 39
    new-instance v6, Ln0/a$d;

    const-string v7, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v0}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Ln0/a$d;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v6, v7, v0, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v0

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSLatitude"

    invoke-direct {v0, v6, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v0, v6, v1, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSLongitude"

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v14, v7}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDOP"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSTrack"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSMapDatum"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestLatitude"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSProcessingMethod"

    const/16 v7, 0x1b

    const/4 v10, 0x7

    invoke-direct {v0, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSAreaInformation"

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v0, v6, v7, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v7, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v4, v6

    new-instance v0, Ln0/a$d;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v0, v6, v7, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v4, v6

    sput-object v4, Ln0/a;->c0:[Ln0/a$d;

    const/4 v0, 0x1

    new-array v6, v0, [Ln0/a$d;

    .line 40
    new-instance v7, Ln0/a$d;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v10, v0, v8}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    sput-object v6, Ln0/a;->d0:[Ln0/a$d;

    const/16 v7, 0x25

    new-array v7, v7, [Ln0/a$d;

    .line 41
    new-instance v10, Ln0/a$d;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v10, v14, v8, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v0

    new-instance v0, Ln0/a$d;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v8, v10, v1}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-instance v0, Ln0/a$d;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v10, v14, v1}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-instance v0, Ln0/a$d;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v8, v10, v14, v1}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v0, v7, v14

    new-instance v0, Ln0/a$d;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v8, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v14, v10}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v14, v10}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v1, v8, v10}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v7, v1

    new-instance v0, Ln0/a$d;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Ln0/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v7, v1

    sput-object v7, Ln0/a;->e0:[Ln0/a$d;

    .line 42
    new-instance v0, Ln0/a$d;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln0/a;->f0:Ln0/a$d;

    new-array v0, v14, [Ln0/a$d;

    .line 43
    new-instance v1, Ln0/a$d;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Ln0/a$d;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Ln0/a$d;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v8, v10, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Ln0/a;->g0:[Ln0/a$d;

    new-array v1, v8, [Ln0/a$d;

    .line 44
    new-instance v8, Ln0/a$d;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v10, v11, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v1, v10

    new-instance v8, Ln0/a$d;

    const-string v10, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v10, v11, v14}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v8, v1, v10

    sput-object v1, Ln0/a;->h0:[Ln0/a$d;

    new-array v8, v10, [Ln0/a$d;

    .line 45
    new-instance v11, Ln0/a$d;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v14, v10, v13}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    sput-object v8, Ln0/a;->i0:[Ln0/a$d;

    const/4 v11, 0x1

    new-array v14, v11, [Ln0/a$d;

    .line 46
    new-instance v11, Ln0/a$d;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v2

    const/16 v2, 0x37

    invoke-direct {v11, v10, v2, v13}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v11, v14, v2

    sput-object v14, Ln0/a;->j0:[Ln0/a$d;

    const/16 v10, 0xa

    new-array v10, v10, [[Ln0/a$d;

    aput-object v12, v10, v2

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    aput-object v6, v10, v13

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v3, 0x5

    aput-object v12, v10, v3

    const/4 v3, 0x6

    aput-object v0, v10, v3

    const/4 v0, 0x7

    aput-object v1, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    .line 47
    sput-object v10, Ln0/a;->k0:[[Ln0/a$d;

    new-array v0, v3, [Ln0/a$d;

    .line 48
    new-instance v1, Ln0/a$d;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Ln0/a$d;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ln0/a$d;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ln0/a$d;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Ln0/a$d;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Ln0/a$d;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v3, v4, v6}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sput-object v0, Ln0/a;->l0:[Ln0/a$d;

    .line 49
    new-instance v0, Ln0/a$d;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v1, v3, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln0/a;->m0:Ln0/a$d;

    .line 50
    new-instance v0, Ln0/a$d;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v1, v3, v2}, Ln0/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln0/a;->n0:Ln0/a$d;

    .line 51
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Ln0/a;->o0:[Ljava/util/HashMap;

    .line 52
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Ln0/a;->p0:[Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ln0/a;->q0:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln0/a;->r0:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 55
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ln0/a;->s0:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Ln0/a;->t0:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Ln0/a;->u0:[B

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln0/a;->W:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 59
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 60
    :goto_c31
    sget-object v0, Ln0/a;->k0:[[Ln0/a$d;

    array-length v1, v0

    if-ge v7, v1, :cond_c6c

    .line 61
    sget-object v1, Ln0/a;->o0:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 62
    sget-object v1, Ln0/a;->p0:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 63
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c4c
    if-ge v2, v1, :cond_c69

    aget-object v3, v0, v2

    .line 64
    sget-object v4, Ln0/a;->o0:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Ln0/a$d;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Ln0/a;->p0:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Ln0/a$d;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c4c

    :cond_c69
    add-int/lit8 v7, v7, 0x1

    goto :goto_c31

    .line 66
    :cond_c6c
    sget-object v0, Ln0/a;->r0:Ljava/util/HashMap;

    sget-object v1, Ln0/a;->l0:[Ln0/a$d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Ln0/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 67
    aget-object v2, v1, v2

    iget v2, v2, Ln0/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 68
    aget-object v2, v1, v2

    iget v2, v2, Ln0/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 69
    aget-object v2, v1, v2

    iget v2, v2, Ln0/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 70
    aget-object v2, v1, v2

    iget v2, v2, Ln0/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 71
    aget-object v1, v1, v2

    iget v1, v1, Ln0/a$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln0/a;->v0:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln0/a;->w0:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_cd0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_cda
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_ce0
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_ce6
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_cec
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_cf2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_cfa
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_d04
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_d0c
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_d12
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_d18
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_d1e
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_d24
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_d2a
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d30
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_d36
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_d56
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ln0/a;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ln0/a;->k0:[[Ln0/a$d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Ln0/a;->g:Ljava/util/Set;

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    const-string v0, "inputStream cannot be null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln0/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_3e

    .line 8
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1388

    invoke-direct {p2, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 9
    invoke-static {p2}, Ln0/a;->s(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_35

    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ln0/a;->e:Z

    .line 12
    iput-object v0, p0, Ln0/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 13
    iput-object v0, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_68

    .line 14
    :cond_3e
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_4a

    .line 15
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Ln0/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 16
    iput-object v0, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    goto :goto_68

    .line 17
    :cond_4a
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_64

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 18
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Ln0/a;->z(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 19
    iput-object v0, p0, Ln0/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 20
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    goto :goto_68

    .line 21
    :cond_64
    iput-object v0, p0, Ln0/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 22
    iput-object v0, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    .line 23
    :goto_68
    invoke-direct {p0, p1}, Ln0/a;->D(Ljava/io/InputStream;)V

    return-void
.end method

.method private A(Ljava/util/HashMap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    if-eqz v0, :cond_45

    .line 2
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    sget-object v1, Ln0/a;->z:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    return v3

    .line 4
    :cond_1c
    iget v2, p0, Ln0/a;->d:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_45

    const-string v2, "PhotometricInterpretation"

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz p1, :cond_45

    .line 6
    iget-object v2, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 7
    invoke-virtual {p1, v2}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_3b

    .line 8
    sget-object v2, Ln0/a;->B:[I

    .line 9
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_3b
    const/4 v2, 0x6

    if-ne p1, v2, :cond_45

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_45

    :cond_44
    return v3

    .line 11
    :cond_45
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_50

    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/4 p1, 0x0

    return p1
.end method

.method private B(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    const-string v1, "ImageWidth"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 3
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_28

    if-gt p1, v1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method private C([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    sget-object v2, Ln0/a;->M:[B

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 2
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    .line 3
    :goto_12
    sget-object v2, Ln0/a;->N:[B

    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 4
    sget-object v3, Ln0/a;->M:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    const/4 p1, 0x1

    return p1
.end method

.method private D(Ljava/io/InputStream;)V
    .registers 6

    const-string v0, "inputstream shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_7
    :try_start_7
    sget-object v2, Ln0/a;->k0:[[Ln0/a$d;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 3
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4
    :cond_18
    iget-boolean v1, p0, Ln0/a;->e:Z

    if-nez v1, :cond_2a

    .line 5
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 6
    invoke-direct {p0, v1}, Ln0/a;->i(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Ln0/a;->d:I

    move-object p1, v1

    .line 7
    :cond_2a
    new-instance v1, Ln0/a$b;

    invoke-direct {v1, p1}, Ln0/a$b;-><init>(Ljava/io/InputStream;)V

    .line 8
    iget-boolean p1, p0, Ln0/a;->e:Z

    if-nez p1, :cond_59

    .line 9
    iget p1, p0, Ln0/a;->d:I

    packed-switch p1, :pswitch_data_90

    goto :goto_5c

    .line 10
    :pswitch_39
    invoke-direct {p0, v1}, Ln0/a;->p(Ln0/a$b;)V

    goto :goto_5c

    .line 11
    :pswitch_3d
    invoke-direct {p0, v1}, Ln0/a;->k(Ln0/a$b;)V

    goto :goto_5c

    .line 12
    :pswitch_41
    invoke-direct {p0, v1}, Ln0/a;->g(Ln0/a$b;)V

    goto :goto_5c

    .line 13
    :pswitch_45
    invoke-direct {p0, v1}, Ln0/a;->n(Ln0/a$b;)V

    goto :goto_5c

    .line 14
    :pswitch_49
    invoke-direct {p0, v1}, Ln0/a;->l(Ln0/a$b;)V

    goto :goto_5c

    .line 15
    :pswitch_4d
    invoke-direct {p0, v1}, Ln0/a;->j(Ln0/a$b;)V

    goto :goto_5c

    .line 16
    :pswitch_51
    invoke-direct {p0, v1, v0, v0}, Ln0/a;->h(Ln0/a$b;II)V

    goto :goto_5c

    .line 17
    :pswitch_55
    invoke-direct {p0, v1}, Ln0/a;->m(Ln0/a$b;)V

    goto :goto_5c

    .line 18
    :cond_59
    invoke-direct {p0, v1}, Ln0/a;->o(Ln0/a$b;)V

    .line 19
    :goto_5c
    invoke-direct {p0, v1}, Ln0/a;->K(Ln0/a$b;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Ln0/a;->u:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_62} :catch_6c
    .catchall {:try_start_7 .. :try_end_62} :catchall_6a

    .line 21
    invoke-direct {p0}, Ln0/a;->a()V

    .line 22
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_82

    goto :goto_7f

    :catchall_6a
    move-exception p1

    goto :goto_83

    :catch_6c
    move-exception p1

    .line 23
    :try_start_6d
    iput-boolean v0, p0, Ln0/a;->u:Z

    .line 24
    sget-boolean v0, Ln0/a;->w:Z

    if-eqz v0, :cond_7a

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 25
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_6a

    .line 26
    :cond_7a
    invoke-direct {p0}, Ln0/a;->a()V

    if-eqz v0, :cond_82

    .line 27
    :goto_7f
    invoke-direct {p0}, Ln0/a;->F()V

    :cond_82
    return-void

    .line 28
    :goto_83
    invoke-direct {p0}, Ln0/a;->a()V

    .line 29
    sget-boolean v0, Ln0/a;->w:Z

    if-eqz v0, :cond_8d

    .line 30
    invoke-direct {p0}, Ln0/a;->F()V

    .line 31
    :cond_8d
    goto :goto_8f

    :goto_8e
    throw p1

    :goto_8f
    goto :goto_8e

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_51
        :pswitch_55
        :pswitch_55
        :pswitch_4d
        :pswitch_55
        :pswitch_49
        :pswitch_45
        :pswitch_55
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method private E(Ln0/a$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln0/a;->G(Ln0/a$b;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 2
    invoke-virtual {p1, v0}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 3
    invoke-virtual {p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v0

    .line 4
    iget v1, p0, Ln0/a;->d:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_36

    const/16 v2, 0xa

    if-eq v1, v2, :cond_36

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1b

    goto :goto_36

    .line 5
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_36
    :goto_36
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_63

    if-ge v0, p2, :cond_63

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_62

    .line 7
    invoke-virtual {p1, v0}, Ln0/a$b;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_4b

    goto :goto_62

    .line 8
    :cond_4b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    :goto_62
    return-void

    .line 9
    :cond_63
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private F()V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_88

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a$c;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ln0/a$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagValue: \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v4, v3}, Ln0/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_88
    return-void
.end method

.method private G(Ln0/a$b;)Ljava/nio/ByteOrder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln0/a$b;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    const-string v1, "ExifInterface"

    if-eq p1, v0, :cond_35

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_1a

    .line 2
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_17

    const-string p1, "readExifSegment: Byte Align MM"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_17
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 5
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_35
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_3e

    const-string p1, "readExifSegment: Byte Align II"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3e
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private H([BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln0/a$b;

    invoke-direct {v0, p1}, Ln0/a$b;-><init>([B)V

    .line 2
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Ln0/a;->E(Ln0/a$b;I)V

    .line 3
    invoke-direct {p0, v0, p2}, Ln0/a;->I(Ln0/a$b;I)V

    return-void
.end method

.method private I(Ln0/a$b;I)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Ln0/a;->g:Ljava/util/Set;

    iget v4, v1, Ln0/a$b;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget v3, v1, Ln0/a$b;->r:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, v1, Ln0/a$b;->q:I

    if-le v3, v5, :cond_1a

    return-void

    .line 3
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readShort()S

    move-result v3

    .line 4
    sget-boolean v5, Ln0/a;->w:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_38

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_38
    iget v5, v1, Ln0/a$b;->r:I

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v5, v7

    iget v7, v1, Ln0/a$b;->q:I

    if-gt v5, v7, :cond_413

    if-gtz v3, :cond_45

    goto/16 :goto_413

    :cond_45
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_47
    const/4 v8, 0x5

    if-ge v7, v3, :cond_389

    .line 7
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readInt()I

    move-result v15

    .line 10
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->c()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    .line 11
    sget-object v20, Ln0/a;->o0:[Ljava/util/HashMap;

    aget-object v12, v20, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a$d;

    .line 12
    sget-boolean v12, Ln0/a;->w:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_a3

    new-array v8, v8, [Ljava/lang/Object;

    .line 13
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x1

    aput-object v23, v8, v20

    if-eqz v4, :cond_87

    iget-object v5, v4, Ln0/a$d;->b:Ljava/lang/String;

    goto :goto_88

    :cond_87
    const/4 v5, 0x0

    :goto_88
    const/16 v22, 0x2

    aput-object v5, v8, v22

    .line 14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v21, 0x4

    aput-object v5, v8, v21

    const-string v5, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 15
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    const/4 v5, 0x7

    if-nez v4, :cond_c1

    if-eqz v12, :cond_bc

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    move-object v11, v6

    move/from16 v25, v7

    goto/16 :goto_141

    :cond_c1
    if-lez v14, :cond_128

    .line 17
    sget-object v8, Ln0/a;->Y:[I

    array-length v11, v8

    if-lt v14, v11, :cond_c9

    goto :goto_128

    .line 18
    :cond_c9
    invoke-virtual {v4, v14}, Ln0/a$d;->a(I)Z

    move-result v11

    if-nez v11, :cond_f4

    if-eqz v12, :cond_bc

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since data format ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ln0/a;->X:[Ljava/lang/String;

    aget-object v11, v11, v14

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Ln0/a$d;->b:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :cond_f4
    if-ne v14, v5, :cond_f8

    .line 20
    iget v14, v4, Ln0/a$d;->c:I

    :cond_f8
    move-object v11, v6

    int-to-long v5, v15

    .line 21
    aget v8, v8, v14

    move/from16 v25, v7

    int-to-long v7, v8

    mul-long v5, v5, v7

    const-wide/16 v7, 0x0

    cmp-long v26, v5, v7

    if-ltz v26, :cond_111

    const-wide/32 v7, 0x7fffffff

    cmp-long v26, v5, v7

    if-lez v26, :cond_10f

    goto :goto_111

    :cond_10f
    const/4 v7, 0x1

    goto :goto_144

    :cond_111
    :goto_111
    if-eqz v12, :cond_143

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    :cond_128
    :goto_128
    move-object v11, v6

    move/from16 v25, v7

    if-eqz v12, :cond_141

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_141
    :goto_141
    const-wide/16 v5, 0x0

    :cond_143
    :goto_143
    const/4 v7, 0x0

    :goto_144
    if-nez v7, :cond_14e

    .line 24
    invoke-virtual {v1, v9, v10}, Ln0/a$b;->e(J)V

    move/from16 v26, v3

    :goto_14b
    const/4 v13, 0x2

    goto/16 :goto_37d

    :cond_14e
    const-string v7, "Compression"

    cmp-long v8, v5, v18

    if-lez v8, :cond_216

    .line 25
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readInt()I

    move-result v8

    move/from16 v26, v3

    if-eqz v12, :cond_173

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v14

    const-string v14, "seek to data offset: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    :cond_173
    move/from16 v18, v14

    .line 27
    :goto_175
    iget v3, v0, Ln0/a;->d:I

    const/4 v14, 0x7

    if-ne v3, v14, :cond_1d5

    .line 28
    iget-object v3, v4, Ln0/a$d;->b:Ljava/lang/String;

    const-string v14, "MakerNote"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 29
    iput v8, v0, Ln0/a;->q:I

    goto :goto_1d0

    :cond_187
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1d0

    .line 30
    iget-object v14, v4, Ln0/a$d;->b:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    .line 31
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 32
    iput v8, v0, Ln0/a;->r:I

    .line 33
    iput v15, v0, Ln0/a;->s:I

    .line 34
    iget-object v3, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    const/4 v14, 0x6

    .line 35
    invoke-static {v14, v3}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v3

    .line 36
    iget v14, v0, Ln0/a;->r:I

    move/from16 v19, v15

    int-to-long v14, v14

    iget-object v2, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 37
    invoke-static {v14, v15, v2}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v2

    .line 38
    iget v14, v0, Ln0/a;->s:I

    int-to-long v14, v14

    move/from16 v24, v13

    iget-object v13, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 39
    invoke-static {v14, v15, v13}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v13

    .line 40
    iget-object v14, v0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v3, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, v15

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e9

    :cond_1d0
    :goto_1d0
    move/from16 v24, v13

    move/from16 v19, v15

    goto :goto_1e9

    :cond_1d5
    move/from16 v24, v13

    move/from16 v19, v15

    const/16 v2, 0xa

    if-ne v3, v2, :cond_1e9

    .line 43
    iget-object v2, v4, Ln0/a$d;->b:Ljava/lang/String;

    const-string v3, "JpgFromRaw"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 44
    iput v8, v0, Ln0/a;->t:I

    :cond_1e9
    :goto_1e9
    int-to-long v2, v8

    add-long v13, v2, v5

    .line 45
    iget v15, v1, Ln0/a$b;->q:I

    move-object/from16 v27, v4

    move-wide/from16 v28, v5

    int-to-long v4, v15

    cmp-long v6, v13, v4

    if-gtz v6, :cond_1fb

    .line 46
    invoke-virtual {v1, v2, v3}, Ln0/a$b;->e(J)V

    goto :goto_222

    :cond_1fb
    if-eqz v12, :cond_211

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_211
    invoke-virtual {v1, v9, v10}, Ln0/a$b;->e(J)V

    goto/16 :goto_14b

    :cond_216
    move/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v28, v5

    move/from16 v24, v13

    move/from16 v18, v14

    move/from16 v19, v15

    .line 49
    :goto_222
    sget-object v2, Ln0/a;->r0:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v12, :cond_24f

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v28

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_251

    :cond_24f
    move-wide/from16 v5, v28

    :goto_251
    const/16 v3, 0x8

    if-eqz v2, :cond_2fe

    const-wide/16 v4, -0x1

    move/from16 v14, v18

    const/4 v6, 0x3

    if-eq v14, v6, :cond_279

    const/4 v6, 0x4

    if-eq v14, v6, :cond_274

    if-eq v14, v3, :cond_26f

    const/16 v3, 0x9

    if-eq v14, v3, :cond_26a

    const/16 v3, 0xd

    if-eq v14, v3, :cond_26a

    goto :goto_27e

    .line 51
    :cond_26a
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readInt()I

    move-result v3

    goto :goto_27d

    .line 52
    :cond_26f
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readShort()S

    move-result v3

    goto :goto_27d

    .line 53
    :cond_274
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->d()J

    move-result-wide v4

    goto :goto_27e

    .line 54
    :cond_279
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v3

    :goto_27d
    int-to-long v4, v3

    :goto_27e
    const/4 v13, 0x2

    if-eqz v12, :cond_29a

    new-array v3, v13, [Ljava/lang/Object;

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    move-object/from16 v8, v27

    iget-object v6, v8, Ln0/a$d;->b:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "Offset: %d, tagName: %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29a
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2e3

    .line 56
    iget v3, v1, Ln0/a$b;->q:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_2e3

    .line 57
    iget-object v3, v0, Ln0/a;->g:Ljava/util/Set;

    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2bf

    .line 58
    invoke-virtual {v1, v4, v5}, Ln0/a$b;->e(J)V

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ln0/a;->I(Ln0/a$b;I)V

    goto :goto_2f9

    :cond_2bf
    if-eqz v12, :cond_2f9

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f9

    :cond_2e3
    if-eqz v12, :cond_2f9

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2f9
    :goto_2f9
    invoke-virtual {v1, v9, v10}, Ln0/a$b;->e(J)V

    goto/16 :goto_37d

    :cond_2fe
    move/from16 v14, v18

    move-object/from16 v8, v27

    const/4 v13, 0x2

    .line 63
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->c()I

    move-result v2

    iget v4, v0, Ln0/a;->p:I

    add-int/2addr v2, v4

    long-to-int v4, v5

    .line 64
    new-array v4, v4, [B

    .line 65
    invoke-virtual {v1, v4}, Ln0/a$b;->readFully([B)V

    .line 66
    new-instance v5, Ln0/a$c;

    move-object v12, v4

    int-to-long v3, v2

    move/from16 v2, v19

    move-object v15, v5

    move/from16 v16, v14

    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Ln0/a$c;-><init>(IIJ[B)V

    .line 67
    iget-object v2, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v3, v8, Ln0/a$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, v8, Ln0/a$d;->b:Ljava/lang/String;

    const-string v3, "DNGVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_338

    const/4 v2, 0x3

    .line 69
    iput v2, v0, Ln0/a;->d:I

    .line 70
    :cond_338
    iget-object v2, v8, Ln0/a$d;->b:Ljava/lang/String;

    const-string v3, "Make"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34c

    iget-object v2, v8, Ln0/a$d;->b:Ljava/lang/String;

    const-string v3, "Model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35a

    :cond_34c
    iget-object v2, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 71
    invoke-virtual {v5, v2}, Ln0/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PENTAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36d

    :cond_35a
    iget-object v2, v8, Ln0/a$d;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_371

    iget-object v2, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 73
    invoke-virtual {v5, v2}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_371

    :cond_36d
    const/16 v2, 0x8

    .line 74
    iput v2, v0, Ln0/a;->d:I

    .line 75
    :cond_371
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->c()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v9

    if-eqz v4, :cond_37d

    .line 76
    invoke-virtual {v1, v9, v10}, Ln0/a$b;->e(J)V

    :cond_37d
    :goto_37d
    add-int/lit8 v7, v25, 0x1

    int-to-short v7, v7

    move/from16 v2, p2

    move-object v6, v11

    move/from16 v3, v26

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_47

    :cond_389
    move-object v11, v6

    .line 77
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->c()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Ln0/a$b;->q:I

    if-gt v2, v3, :cond_413

    .line 78
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readInt()I

    move-result v2

    .line 79
    sget-boolean v3, Ln0/a;->w:Z

    if-eqz v3, :cond_3af

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3af
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_3fd

    .line 81
    iget v6, v1, Ln0/a$b;->q:I

    if-ge v2, v6, :cond_3fd

    .line 82
    iget-object v6, v0, Ln0/a;->g:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e6

    .line 83
    invoke-virtual {v1, v4, v5}, Ln0/a$b;->e(J)V

    .line 84
    iget-object v2, v0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d8

    .line 85
    invoke-direct {v0, v1, v3}, Ln0/a;->I(Ln0/a$b;I)V

    goto :goto_413

    .line 86
    :cond_3d8
    iget-object v2, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_413

    .line 87
    invoke-direct {v0, v1, v8}, Ln0/a;->I(Ln0/a$b;I)V

    goto :goto_413

    :cond_3e6
    if-eqz v3, :cond_413

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_413

    :cond_3fd
    if-eqz v3, :cond_413

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_413
    :goto_413
    return-void
.end method

.method private J(Ln0/a$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    .line 3
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a$c;

    if-eqz v0, :cond_1c

    if-nez v1, :cond_33

    .line 5
    :cond_1c
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    if-eqz v0, :cond_33

    .line 7
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {v0, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 9
    invoke-direct {p0, p1, v0, p2}, Ln0/a;->h(Ln0/a$b;II)V

    :cond_33
    return-void
.end method

.method private K(Ln0/a$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a$c;

    const/4 v2, 0x6

    if-eqz v1, :cond_2f

    .line 3
    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Ln0/a;->o:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    if-eq v1, v2, :cond_21

    const/4 v2, 0x7

    if-eq v1, v2, :cond_25

    goto :goto_34

    .line 4
    :cond_21
    invoke-direct {p0, p1, v0}, Ln0/a;->q(Ln0/a$b;Ljava/util/HashMap;)V

    goto :goto_34

    .line 5
    :cond_25
    invoke-direct {p0, v0}, Ln0/a;->A(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 6
    invoke-direct {p0, p1, v0}, Ln0/a;->r(Ln0/a$b;Ljava/util/HashMap;)V

    goto :goto_34

    .line 7
    :cond_2f
    iput v2, p0, Ln0/a;->o:I

    .line 8
    invoke-direct {p0, p1, v0}, Ln0/a;->q(Ln0/a$b;Ljava/util/HashMap;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private static L([B[B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 1
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x0

    .line 2
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 3
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method private M(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_89

    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_89

    .line 2
    :cond_18
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    .line 4
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    .line 5
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a$c;

    .line 6
    iget-object v5, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 7
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/a$c;

    .line 8
    iget-object v5, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 9
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a$c;

    if-eqz v0, :cond_7f

    if-nez v3, :cond_49

    goto :goto_7f

    :cond_49
    if-eqz v2, :cond_75

    if-nez v4, :cond_4e

    goto :goto_75

    .line 10
    :cond_4e
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 11
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 12
    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 13
    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_88

    if-ge v1, v3, :cond_88

    .line 14
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 15
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 16
    aput-object v1, v0, p2

    goto :goto_88

    .line 17
    :cond_75
    :goto_75
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_88

    const-string p1, "Second image does not contain valid size information"

    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 19
    :cond_7f
    :goto_7f
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_88

    const-string p1, "First image does not contain valid size information"

    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    :goto_88
    return-void

    .line 21
    :cond_89
    :goto_89
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_92

    const-string p1, "Cannot perform swap since only one image data exists"

    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-void
.end method

.method private N(Ln0/a$b;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    .line 3
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a$c;

    .line 5
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/a$c;

    .line 7
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a$c;

    .line 9
    iget-object v4, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a$c;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_c8

    .line 11
    iget p1, v0, Ln0/a$c;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_84

    .line 12
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 13
    invoke-virtual {v0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln0/a$e;

    if-eqz p1, :cond_6d

    .line 14
    array-length v0, p1

    if-eq v0, v4, :cond_5c

    goto :goto_6d

    .line 15
    :cond_5c
    aget-object v0, p1, v3

    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v0, v1}, Ln0/a$c;->d(Ln0/a$e;Ljava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v0

    .line 17
    aget-object p1, p1, v2

    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 18
    invoke-static {p1, v1}, Ln0/a$c;->d(Ln0/a$e;Ljava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p1

    goto :goto_a2

    .line 19
    :cond_6d
    :goto_6d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_84
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_b1

    .line 24
    array-length v0, p1

    if-eq v0, v4, :cond_92

    goto :goto_b1

    .line 25
    :cond_92
    aget v0, p1, v3

    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {v0, v1}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v0

    .line 27
    aget p1, p1, v2

    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 28
    invoke-static {p1, v1}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p1

    .line 29
    :goto_a2
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    .line 31
    :cond_b1
    :goto_b1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c8
    if-eqz v1, :cond_109

    if-eqz v2, :cond_109

    if-eqz v3, :cond_109

    if-eqz v4, :cond_109

    .line 34
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 35
    iget-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 36
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 37
    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_10c

    if-le v1, v2, :cond_10c

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 38
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 39
    invoke-static {v0, p1}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p1

    .line 40
    iget-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 41
    invoke-static {v1, v0}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v0

    .line 42
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    .line 44
    :cond_109
    invoke-direct {p0, p1, p2}, Ln0/a;->J(Ln0/a$b;I)V

    :cond_10c
    :goto_10c
    return-void
.end method

.method private O()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    invoke-direct {p0, v0, v1}, Ln0/a;->M(II)V

    const/4 v2, 0x4

    .line 2
    invoke-direct {p0, v0, v2}, Ln0/a;->M(II)V

    .line 3
    invoke-direct {p0, v1, v2}, Ln0/a;->M(II)V

    .line 4
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 5
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a$c;

    .line 6
    iget-object v5, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/a$c;

    if-eqz v3, :cond_3b

    if-eqz v4, :cond_3b

    .line 8
    iget-object v5, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3b
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 11
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ln0/a;->B(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 12
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 14
    :cond_5c
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Ln0/a;->B(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-void
.end method

.method private a()V
    .registers 7

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "DateTime"

    .line 2
    invoke-virtual {p0, v2}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 3
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 4
    invoke-static {v0}, Ln0/a$c;->a(Ljava/lang/String;)Ln0/a$c;

    move-result-object v0

    .line 5
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v0, "ImageWidth"

    .line 6
    invoke-virtual {p0, v0}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_33

    .line 7
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 8
    invoke-static {v3, v4, v5}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v0, "ImageLength"

    .line 10
    invoke-virtual {p0, v0}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    .line 11
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v3, v4, v5}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    const-string v0, "Orientation"

    .line 14
    invoke-virtual {p0, v0}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    .line 15
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v3, v4, v2}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    const-string v0, "LightSource"

    .line 18
    invoke-virtual {p0, v0}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    .line 19
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v3, v4, v2}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_24

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)[J
    .registers 5

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_16

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0

    .line 6
    :cond_16
    instance-of v0, p0, [J

    if-eqz v0, :cond_1d

    .line 7
    check-cast p0, [J

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private f(Ljava/lang/String;)Ln0/a$c;
    .registers 4

    const-string v0, "tag shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ISOSpeedRatings"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_18

    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-string p1, "PhotographicSensitivity"

    :cond_1a
    const/4 v0, 0x0

    .line 5
    :goto_1b
    sget-object v1, Ln0/a;->k0:[[Ln0/a$d;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 6
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a$c;

    if-eqz v1, :cond_2d

    return-object v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ln0/a$b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    .line 1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    :try_start_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_16

    .line 3
    new-instance v2, Ln0/a$a;

    invoke-direct {v2, p0, p1}, Ln0/a$a;-><init>(Ln0/a;Ln0/a$b;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    goto :goto_25

    .line 4
    :cond_16
    iget-object v2, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1e

    .line 5
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_25

    .line 6
    :cond_1e
    iget-object v2, p0, Ln0/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_148

    .line 7
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_25
    const/16 v2, 0x21

    .line 8
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 9
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    .line 10
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    .line 11
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_57

    const/16 v0, 0x1d

    .line 13
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1e

    .line 14
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f

    .line 15
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    .line 16
    :cond_57
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/16 v0, 0x12

    .line 17
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x13

    .line 18
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x18

    .line 19
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    :cond_70
    move-object v0, v6

    move-object v4, v0

    :goto_72
    const/4 v5, 0x0

    if-eqz v6, :cond_88

    .line 20
    iget-object v7, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    const-string v8, "ImageWidth"

    .line 21
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v9

    .line 22
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    if-eqz v0, :cond_9d

    .line 23
    iget-object v7, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    const-string v8, "ImageLength"

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v9

    .line 25
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    const/4 v7, 0x6

    if-eqz v4, :cond_c7

    const/4 v8, 0x1

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_b7

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_b5

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_b2

    goto :goto_b8

    :cond_b2
    const/16 v8, 0x8

    goto :goto_b8

    :cond_b5
    const/4 v8, 0x3

    goto :goto_b8

    :cond_b7
    const/4 v8, 0x6

    .line 27
    :goto_b8
    iget-object v9, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    const-string v10, "Orientation"

    iget-object v11, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 28
    invoke-static {v8, v11}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v8

    .line 29
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    if-eqz v2, :cond_11a

    if-eqz v3, :cond_11a

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_112

    int-to-long v8, v2

    .line 32
    invoke-virtual {p1, v8, v9}, Ln0/a$b;->e(J)V

    new-array v8, v7, [B

    .line 33
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v7, :cond_10a

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, -0x6

    .line 34
    sget-object v7, Ln0/a;->t0:[B

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 35
    new-array v7, v3, [B

    .line 36
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v3, :cond_fa

    .line 37
    iput v2, p0, Ln0/a;->p:I

    .line 38
    invoke-direct {p0, v7, v5}, Ln0/a;->H([BI)V

    goto :goto_11a

    .line 39
    :cond_fa
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_102
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_10a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_112
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_11a
    :goto_11a
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_144

    const-string p1, "ExifInterface"

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heif meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_7 .. :try_end_144} :catchall_14c

    .line 45
    :cond_144
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_148
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_14c
    move-exception p1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 46
    throw p1
.end method

.method private h(Ln0/a$b;II)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    sget-boolean v4, Ln0/a;->w:Z

    const-string v5, "ExifInterface"

    if-eqz v4, :cond_22

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getJpegAttributes starting with: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_22
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    int-to-long v6, v2

    .line 4
    invoke-virtual {v1, v6, v7}, Ln0/a$b;->e(J)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readByte()B

    move-result v4

    const-string v6, "Invalid marker: "

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1d7

    const/4 v8, 0x1

    add-int/2addr v2, v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readByte()B

    move-result v9

    const/16 v10, -0x28

    if-ne v9, v10, :cond_1bc

    add-int/2addr v2, v8

    .line 7
    :goto_3f
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readByte()B

    move-result v4

    if-ne v4, v7, :cond_19f

    add-int/2addr v2, v8

    .line 8
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readByte()B

    move-result v4

    .line 9
    sget-boolean v6, Ln0/a;->w:Z

    if-eqz v6, :cond_68

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found JPEG segment indicator: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v10, v4, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    add-int/2addr v2, v8

    const/16 v9, -0x27

    if-eq v4, v9, :cond_199

    const/16 v9, -0x26

    if-ne v4, v9, :cond_73

    goto/16 :goto_199

    .line 11
    :cond_73
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    add-int/lit8 v2, v2, 0x2

    if-eqz v6, :cond_a6

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JPEG segment: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v10, v4, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (length: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v9, 0x2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    const-string v6, "Invalid length"

    if-ltz v9, :cond_193

    const/16 v10, -0x1f

    const/4 v11, 0x0

    if-eq v4, v10, :cond_128

    const/4 v10, -0x2

    if-eq v4, v10, :cond_fb

    packed-switch v4, :pswitch_data_1f4

    packed-switch v4, :pswitch_data_200

    packed-switch v4, :pswitch_data_20a

    packed-switch v4, :pswitch_data_214

    :goto_be
    move v10, v2

    const/4 v2, 0x1

    goto/16 :goto_176

    .line 13
    :pswitch_c2
    invoke-virtual {v1, v8}, Ln0/a$b;->skipBytes(I)I

    move-result v4

    if-ne v4, v8, :cond_f3

    .line 14
    iget-object v4, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v10, v11, v12}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v10

    const-string v11, "ImageLength"

    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v4, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    .line 18
    invoke-virtual/range {p1 .. p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 19
    invoke-static {v10, v11, v12}, Ln0/a$c;->b(JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v10

    const-string v11, "ImageWidth"

    invoke-virtual {v4, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x5

    goto :goto_be

    .line 20
    :cond_f3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SOFx"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_fb
    new-array v4, v9, [B

    .line 22
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v9, :cond_120

    const-string v9, "UserComment"

    .line 23
    invoke-virtual {v0, v9}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_11d

    .line 24
    iget-object v10, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v10, v10, v8

    new-instance v12, Ljava/lang/String;

    sget-object v13, Ln0/a;->s0:Ljava/nio/charset/Charset;

    invoke-direct {v12, v4, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v12}, Ln0/a$c;->a(Ljava/lang/String;)Ln0/a$c;

    move-result-object v4

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11d
    move v10, v2

    :cond_11e
    :goto_11e
    const/4 v2, 0x1

    goto :goto_175

    .line 25
    :cond_120
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_128
    new-array v4, v9, [B

    .line 27
    invoke-virtual {v1, v4}, Ln0/a$b;->readFully([B)V

    add-int v10, v2, v9

    .line 28
    sget-object v12, Ln0/a;->t0:[B

    invoke-static {v4, v12}, Ln0/a;->L([B[B)Z

    move-result v13

    if-eqz v13, :cond_144

    .line 29
    array-length v13, v12

    add-int/2addr v2, v13

    .line 30
    array-length v12, v12

    invoke-static {v4, v12, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 31
    iput v2, v0, Ln0/a;->p:I

    .line 32
    invoke-direct {v0, v4, v3}, Ln0/a;->H([BI)V

    goto :goto_11e

    .line 33
    :cond_144
    sget-object v12, Ln0/a;->u0:[B

    invoke-static {v4, v12}, Ln0/a;->L([B[B)Z

    move-result v13

    if-eqz v13, :cond_11e

    .line 34
    array-length v13, v12

    add-int/2addr v2, v13

    .line 35
    array-length v12, v12

    invoke-static {v4, v12, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    const-string v9, "Xmp"

    .line 36
    invoke-virtual {v0, v9}, Ln0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_11e

    .line 37
    iget-object v12, v0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v12, v12, v11

    new-instance v15, Ln0/a$c;

    const/4 v14, 0x1

    array-length v13, v4

    int-to-long v7, v2

    move v2, v13

    move-object v13, v15

    move-object v11, v15

    move v15, v2

    move-wide/from16 v16, v7

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Ln0/a$c;-><init>(IIJ[B)V

    invoke-virtual {v12, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v0, Ln0/a;->v:Z

    :goto_175
    const/4 v9, 0x0

    :goto_176
    if-ltz v9, :cond_18d

    .line 39
    invoke-virtual {v1, v9}, Ln0/a$b;->skipBytes(I)I

    move-result v4

    if-ne v4, v9, :cond_185

    add-int v4, v10, v9

    move v2, v4

    const/4 v7, -0x1

    const/4 v8, 0x1

    goto/16 :goto_3f

    .line 40
    :cond_185
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid JPEG segment"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_18d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_193
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_199
    :goto_199
    iget-object v2, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    return-void

    .line 44
    :cond_19f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1bc
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1d7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1f3

    :goto_1f2
    throw v1

    :goto_1f3
    goto :goto_1f2

    :pswitch_data_1f4
    .packed-switch -0x40
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch

    :pswitch_data_200
    .packed-switch -0x3b
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch

    :pswitch_data_20a
    .packed-switch -0x37
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch

    :pswitch_data_214
    .packed-switch -0x33
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch
.end method

.method private i(Ljava/io/BufferedInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 4
    invoke-static {v0}, Ln0/a;->u([B)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x4

    return p1

    .line 5
    :cond_15
    invoke-direct {p0, v0}, Ln0/a;->x([B)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 p1, 0x9

    return p1

    .line 6
    :cond_1e
    invoke-direct {p0, v0}, Ln0/a;->t([B)Z

    move-result p1

    if-eqz p1, :cond_27

    const/16 p1, 0xc

    return p1

    .line 7
    :cond_27
    invoke-direct {p0, v0}, Ln0/a;->v([B)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x7

    return p1

    .line 8
    :cond_2f
    invoke-direct {p0, v0}, Ln0/a;->y([B)Z

    move-result p1

    if-eqz p1, :cond_38

    const/16 p1, 0xa

    return p1

    .line 9
    :cond_38
    invoke-direct {p0, v0}, Ln0/a;->w([B)Z

    move-result p1

    if-eqz p1, :cond_41

    const/16 p1, 0xd

    return p1

    .line 10
    :cond_41
    invoke-direct {p0, v0}, Ln0/a;->C([B)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/16 p1, 0xe

    return p1

    :cond_4a
    const/4 p1, 0x0

    return p1
.end method

.method private j(Ln0/a$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln0/a;->m(Ln0/a$b;)V

    .line 2
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz p1, :cond_f7

    .line 4
    new-instance v1, Ln0/a$b;

    iget-object p1, p1, Ln0/a$c;->d:[B

    invoke-direct {v1, p1}, Ln0/a$b;-><init>([B)V

    .line 5
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 6
    sget-object p1, Ln0/a;->G:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 7
    invoke-virtual {v1, v2}, Ln0/a$b;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 8
    invoke-virtual {v1, v3, v4}, Ln0/a$b;->e(J)V

    .line 9
    sget-object v3, Ln0/a;->H:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 10
    invoke-virtual {v1, v4}, Ln0/a$b;->readFully([B)V

    .line 11
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-wide/16 v2, 0x8

    .line 12
    invoke-virtual {v1, v2, v3}, Ln0/a$b;->e(J)V

    goto :goto_4a

    .line 13
    :cond_3f
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-wide/16 v2, 0xc

    .line 14
    invoke-virtual {v1, v2, v3}, Ln0/a$b;->e(J)V

    :cond_4a
    :goto_4a
    const/4 p1, 0x6

    .line 15
    invoke-direct {p0, v1, p1}, Ln0/a;->I(Ln0/a$b;I)V

    .line 16
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    .line 18
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a$c;

    if-eqz p1, :cond_7e

    if-eqz v1, :cond_7e

    .line 20
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7e
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz p1, :cond_f7

    .line 24
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_dd

    .line 25
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9d

    goto :goto_dd

    :cond_9d
    const/4 v1, 0x2

    .line 26
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_f7

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_f7

    .line 27
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 28
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_be

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 29
    :cond_be
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 30
    invoke-static {v1, p1}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p1

    .line 31
    iget-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 32
    invoke-static {v2, v0}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v0

    .line 33
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 35
    :cond_dd
    :goto_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    :goto_f7
    return-void
.end method

.method private k(Ln0/a$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln0/a;->w:Z

    if-eqz v0, :cond_1a

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1a
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 4
    sget-object v0, Ln0/a;->I:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ln0/a$b;->skipBytes(I)I

    .line 5
    array-length v0, v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 6
    :goto_28
    :try_start_28
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v0, v3

    new-array v4, v3, [B

    .line 7
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_ca

    add-int/2addr v0, v3

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4c

    .line 8
    sget-object v3, Ln0/a;->K:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_4c

    .line 9
    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4c
    :goto_4c
    sget-object v3, Ln0/a;->L:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_83

    .line 11
    :cond_55
    sget-object v3, Ln0/a;->J:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 12
    new-array v3, v2, [B

    .line 13
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_a7

    .line 14
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result p1

    .line 15
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 16
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 18
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v5, p1, :cond_84

    .line 19
    iput v0, p0, Ln0/a;->p:I

    .line 20
    invoke-direct {p0, v3, v1}, Ln0/a;->H([BI)V

    .line 21
    invoke-direct {p0}, Ln0/a;->O()V

    :goto_83
    return-void

    .line 22
    :cond_84
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_a7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v4}, Ln0/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c2
    add-int/lit8 v2, v2, 0x4

    .line 26
    invoke-virtual {p1, v2}, Ln0/a$b;->skipBytes(I)I

    add-int/2addr v0, v2

    goto/16 :goto_28

    .line 27
    :cond_ca
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d2
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_d2} :catch_d2

    .line 28
    :catch_d2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :goto_da
    throw p1

    :goto_db
    goto :goto_da
.end method

.method private l(Ln0/a$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 1
    invoke-virtual {p1, v0}, Ln0/a$b;->skipBytes(I)I

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 3
    invoke-virtual {p1, v0}, Ln0/a$b;->skipBytes(I)I

    .line 4
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 7
    invoke-direct {p0, p1, v0, v2}, Ln0/a;->h(Ln0/a$b;II)V

    int-to-long v0, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Ln0/a$b;->e(J)V

    .line 9
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 10
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result v0

    .line 11
    sget-boolean v1, Ln0/a;->w:Z

    const-string v2, "ExifInterface"

    if-eqz v1, :cond_4e

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfDirectoryEntry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_50
    if-ge v3, v0, :cond_ad

    .line 13
    invoke-virtual {p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v4

    .line 14
    invoke-virtual {p1}, Ln0/a$b;->readUnsignedShort()I

    move-result v5

    .line 15
    sget-object v6, Ln0/a;->f0:Ln0/a$d;

    iget v6, v6, Ln0/a$d;->a:I

    if-ne v4, v6, :cond_a7

    .line 16
    invoke-virtual {p1}, Ln0/a$b;->readShort()S

    move-result v0

    .line 17
    invoke-virtual {p1}, Ln0/a$b;->readShort()S

    move-result p1

    .line 18
    iget-object v3, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 19
    invoke-static {v0, v3}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v3

    .line 20
    iget-object v4, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 21
    invoke-static {p1, v4}, Ln0/a$c;->f(ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object v4

    .line 22
    iget-object v5, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v5, v5, v1

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v1, v3, v1

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-boolean v1, Ln0/a;->w:Z

    if-eqz v1, :cond_a6

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated to length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return-void

    .line 26
    :cond_a7
    invoke-virtual {p1, v5}, Ln0/a$b;->skipBytes(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_ad
    return-void
.end method

.method private m(Ln0/a$b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln0/a$b;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ln0/a;->E(Ln0/a$b;I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ln0/a;->I(Ln0/a$b;I)V

    .line 3
    invoke-direct {p0, p1, v0}, Ln0/a;->N(Ln0/a$b;I)V

    const/4 v0, 0x5

    .line 4
    invoke-direct {p0, p1, v0}, Ln0/a;->N(Ln0/a$b;I)V

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, p1, v0}, Ln0/a;->N(Ln0/a$b;I)V

    .line 6
    invoke-direct {p0}, Ln0/a;->O()V

    .line 7
    iget p1, p0, Ln0/a;->d:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_59

    .line 8
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz p1, :cond_59

    .line 10
    new-instance v1, Ln0/a$b;

    iget-object p1, p1, Ln0/a$c;->d:[B

    invoke-direct {v1, p1}, Ln0/a$b;-><init>([B)V

    .line 11
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 12
    invoke-virtual {v1, v2, v3}, Ln0/a$b;->e(J)V

    const/16 p1, 0x9

    .line 13
    invoke-direct {p0, v1, p1}, Ln0/a;->I(Ln0/a$b;I)V

    .line 14
    iget-object v1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 15
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    if-eqz p1, :cond_59

    .line 16
    iget-object v2, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    return-void
.end method

.method private n(Ln0/a$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln0/a;->m(Ln0/a$b;)V

    .line 2
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    if-eqz v0, :cond_18

    .line 4
    iget v0, p0, Ln0/a;->t:I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2}, Ln0/a;->h(Ln0/a$b;II)V

    .line 5
    :cond_18
    iget-object p1, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/a$c;

    .line 7
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    if-eqz p1, :cond_3c

    if-nez v0, :cond_3c

    .line 9
    iget-object v0, p0, Ln0/a;->f:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method private o(Ln0/a$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln0/a;->t0:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ln0/a$b;->skipBytes(I)I

    .line 2
    invoke-virtual {p1}, Ln0/a$b;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 3
    invoke-virtual {p1, v1}, Ln0/a$b;->readFully([B)V

    .line 4
    array-length p1, v0

    iput p1, p0, Ln0/a;->p:I

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, v1, p1}, Ln0/a;->H([BI)V

    return-void
.end method

.method private p(Ln0/a$b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln0/a;->w:Z

    if-eqz v0, :cond_1a

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1a
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 4
    sget-object v0, Ln0/a;->M:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ln0/a$b;->skipBytes(I)I

    .line 5
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 6
    sget-object v1, Ln0/a;->N:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ln0/a$b;->skipBytes(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    :goto_34
    const/4 v2, 0x4

    :try_start_35
    new-array v3, v2, [B

    .line 7
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_9b

    add-int/2addr v1, v2

    .line 8
    invoke-virtual {p1}, Ln0/a$b;->readInt()I

    move-result v4

    add-int/2addr v1, v2

    .line 9
    sget-object v2, Ln0/a;->O:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 10
    new-array v0, v4, [B

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_5c

    .line 12
    iput v1, p0, Ln0/a;->p:I

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, v0, p1}, Ln0/a;->H([BI)V

    .line 14
    iput v1, p0, Ln0/a;->p:I

    goto :goto_82

    .line 15
    :cond_5c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v3}, Ln0/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_77
    rem-int/lit8 v2, v4, 0x2
    :try_end_79
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_79} :catch_a3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7e

    add-int/lit8 v4, v4, 0x1

    :cond_7e
    add-int v2, v1, v4

    if-ne v2, v0, :cond_83

    :goto_82
    return-void

    :cond_83
    const-string v3, "Encountered WebP file with invalid chunk size"

    if-gt v2, v0, :cond_95

    .line 18
    :try_start_87
    invoke-virtual {p1, v4}, Ln0/a$b;->skipBytes(I)I

    move-result v2

    if-ne v2, v4, :cond_8f

    add-int/2addr v1, v2

    goto :goto_34

    .line 19
    :cond_8f
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_95
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_9b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a3
    .catch Ljava/io/EOFException; {:try_start_87 .. :try_end_a3} :catch_a3

    .line 22
    :catch_a3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_ac

    :goto_ab
    throw p1

    :goto_ac
    goto :goto_ab
.end method

.method private q(Ln0/a$b;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/a$c;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln0/a$c;

    if-eqz v0, :cond_78

    if-eqz p2, :cond_78

    .line 3
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5
    iget v1, p0, Ln0/a;->d:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_28

    .line 6
    iget v1, p0, Ln0/a;->q:I

    add-int/2addr v0, v1

    .line 7
    :cond_28
    invoke-virtual {p1}, Ln0/a$b;->b()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez v0, :cond_56

    if-lez p2, :cond_56

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ln0/a;->i:Z

    .line 9
    iget v1, p0, Ln0/a;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Ln0/a;->l:I

    .line 10
    iput p2, p0, Ln0/a;->m:I

    .line 11
    iget-object v2, p0, Ln0/a;->a:Ljava/lang/String;

    if-nez v2, :cond_56

    iget-object v2, p0, Ln0/a;->c:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v2, :cond_56

    iget-object v2, p0, Ln0/a;->b:Ljava/io/FileDescriptor;

    if-nez v2, :cond_56

    .line 12
    new-array v2, p2, [B

    int-to-long v3, v1

    .line 13
    invoke-virtual {p1, v3, v4}, Ln0/a$b;->e(J)V

    .line 14
    invoke-virtual {p1, v2}, Ln0/a$b;->readFully([B)V

    .line 15
    iput-object v2, p0, Ln0/a;->n:[B

    .line 16
    :cond_56
    sget-boolean p1, Ln0/a;->w:Z

    if-eqz p1, :cond_78

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method private r(Ln0/a$b;Ljava/util/HashMap;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    .line 1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/a$c;

    const-string v4, "StripByteCounts"

    .line 2
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/a$c;

    if-eqz v3, :cond_b1

    if-eqz v2, :cond_b1

    .line 3
    iget-object v4, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 4
    invoke-virtual {v3, v4}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ln0/a;->c(Ljava/lang/Object;)[J

    move-result-object v3

    .line 5
    iget-object v4, v0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v2, v4}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln0/a;->c(Ljava/lang/Object;)[J

    move-result-object v2

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_ac

    .line 7
    array-length v5, v3

    if-nez v5, :cond_37

    goto/16 :goto_ac

    :cond_37
    if-eqz v2, :cond_a6

    .line 8
    array-length v5, v2

    if-nez v5, :cond_3d

    goto :goto_a6

    .line 9
    :cond_3d
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_47

    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 10
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const-wide/16 v5, 0x0

    .line 11
    array-length v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v7, :cond_54

    aget-wide v10, v2, v9

    add-long/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_54
    long-to-int v6, v5

    .line 12
    new-array v5, v6, [B

    const/4 v7, 0x1

    .line 13
    iput-boolean v7, v0, Ln0/a;->k:Z

    iput-boolean v7, v0, Ln0/a;->j:Z

    iput-boolean v7, v0, Ln0/a;->i:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 14
    :goto_61
    array-length v12, v3

    if-ge v9, v12, :cond_95

    .line 15
    aget-wide v12, v3, v9

    long-to-int v13, v12

    .line 16
    aget-wide v14, v2, v9

    long-to-int v12, v14

    .line 17
    array-length v14, v3

    sub-int/2addr v14, v7

    if-ge v9, v14, :cond_7b

    add-int v14, v13, v12

    int-to-long v14, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v3, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_7b

    .line 18
    iput-boolean v8, v0, Ln0/a;->k:Z

    :cond_7b
    sub-int/2addr v13, v10

    if-gez v13, :cond_83

    const-string v14, "Invalid strip offset value"

    .line 19
    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    int-to-long v14, v13

    .line 20
    invoke-virtual {v1, v14, v15}, Ln0/a$b;->e(J)V

    add-int/2addr v10, v13

    .line 21
    new-array v13, v12, [B

    .line 22
    invoke-virtual {v1, v13}, Ljava/io/InputStream;->read([B)I

    add-int/2addr v10, v12

    .line 23
    invoke-static {v13, v8, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 24
    :cond_95
    iput-object v5, v0, Ln0/a;->n:[B

    .line 25
    iget-boolean v1, v0, Ln0/a;->k:Z

    if-eqz v1, :cond_b1

    .line 26
    aget-wide v1, v3, v8

    long-to-int v2, v1

    iget v1, v0, Ln0/a;->p:I

    add-int/2addr v2, v1

    iput v2, v0, Ln0/a;->l:I

    .line 27
    iput v6, v0, Ln0/a;->m:I

    goto :goto_b1

    :cond_a6
    :goto_a6
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 28
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ac
    :goto_ac
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 29
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    :goto_b1
    return-void
.end method

.method private static s(Ljava/io/BufferedInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln0/a;->t0:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2
    array-length v0, v0

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_11
    sget-object v2, Ln0/a;->t0:[B

    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 6
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1d

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private t([B)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-instance v2, Ln0/a$b;

    invoke-direct {v2, p1}, Ln0/a$b;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8d
    .catchall {:try_start_2 .. :try_end_7} :catchall_8b

    .line 2
    :try_start_7
    invoke-virtual {v2}, Ln0/a$b;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    .line 3
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 4
    sget-object v6, Ln0/a;->D:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_88
    .catchall {:try_start_7 .. :try_end_18} :catchall_85

    if-nez v5, :cond_1e

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_1e
    const-wide/16 v5, 0x10

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v11, v3, v9

    if-nez v11, :cond_34

    .line 6
    :try_start_28
    invoke-virtual {v2}, Ln0/a$b;->readLong()J

    move-result-wide v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_88
    .catchall {:try_start_28 .. :try_end_2c} :catchall_85

    cmp-long v11, v3, v5

    if-gez v11, :cond_35

    .line 7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_34
    move-wide v5, v7

    .line 8
    :cond_35
    :try_start_35
    array-length v11, p1

    int-to-long v11, v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_3d

    .line 9
    array-length p1, p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_88
    .catchall {:try_start_35 .. :try_end_3c} :catchall_85

    int-to-long v3, p1

    :cond_3d
    sub-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-gez p1, :cond_46

    .line 10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_46
    :try_start_46
    new-array p1, v1, [B

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4c
    const-wide/16 v11, 0x4

    .line 11
    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_81

    .line 12
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_58} :catch_88
    .catchall {:try_start_46 .. :try_end_58} :catchall_85

    if-eq v11, v1, :cond_5e

    .line 13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_5e
    cmp-long v11, v5, v9

    if-nez v11, :cond_63

    goto :goto_7f

    .line 14
    :cond_63
    :try_start_63
    sget-object v11, Ln0/a;->E:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6e

    const/4 v7, 0x1

    goto :goto_77

    .line 15
    :cond_6e
    sget-object v11, Ln0/a;->F:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_88
    .catchall {:try_start_63 .. :try_end_74} :catchall_85

    if-eqz v11, :cond_77

    const/4 v8, 0x1

    :cond_77
    :goto_77
    if-eqz v7, :cond_7f

    if-eqz v8, :cond_7f

    .line 16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v12

    :cond_7f
    :goto_7f
    add-long/2addr v5, v9

    goto :goto_4c

    :cond_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_9e

    :catchall_85
    move-exception p1

    move-object v1, v2

    goto :goto_9f

    :catch_88
    move-exception p1

    move-object v1, v2

    goto :goto_8e

    :catchall_8b
    move-exception p1

    goto :goto_9f

    :catch_8d
    move-exception p1

    .line 17
    :goto_8e
    :try_start_8e
    sget-boolean v2, Ln0/a;->w:Z

    if-eqz v2, :cond_99

    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    .line 18
    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_8b

    :cond_99
    if-eqz v1, :cond_9e

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_9e
    :goto_9e
    return v0

    :goto_9f
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 20
    :cond_a4
    goto :goto_a6

    :goto_a5
    throw p1

    :goto_a6
    goto :goto_a5
.end method

.method private static u([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    sget-object v2, Ln0/a;->C:[B

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 2
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private v([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-instance v2, Ln0/a$b;

    invoke-direct {v2, p1}, Ln0/a$b;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2d
    .catchall {:try_start_2 .. :try_end_7} :catchall_26

    .line 2
    :try_start_7
    invoke-direct {p0, v2}, Ln0/a;->G(Ln0/a$b;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {v2, p1}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 4
    invoke-virtual {v2}, Ln0/a$b;->readShort()S

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_24
    .catchall {:try_start_7 .. :try_end_14} :catchall_21

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    .line 5
    :cond_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_21
    move-exception p1

    move-object v1, v2

    goto :goto_27

    :catch_24
    move-object v1, v2

    goto :goto_2e

    :catchall_26
    move-exception p1

    :goto_27
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_2c
    throw p1

    :catch_2d
    nop

    :goto_2e
    if-eqz v1, :cond_33

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_33
    return v0
.end method

.method private w([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    sget-object v2, Ln0/a;->I:[B

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 2
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method private x([B)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "FUJIFILMCCD-RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 3
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_16

    return v1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method private y([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-instance v2, Ln0/a$b;

    invoke-direct {v2, p1}, Ln0/a$b;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_29
    .catchall {:try_start_2 .. :try_end_7} :catchall_22

    .line 2
    :try_start_7
    invoke-direct {p0, v2}, Ln0/a;->G(Ln0/a$b;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {v2, p1}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 4
    invoke-virtual {v2}, Ln0/a$b;->readShort()S

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_20
    .catchall {:try_start_7 .. :try_end_14} :catchall_1d

    const/16 v1, 0x55

    if-ne p1, v1, :cond_19

    const/4 v0, 0x1

    .line 5
    :cond_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_1d
    move-exception p1

    move-object v1, v2

    goto :goto_23

    :catch_20
    move-object v1, v2

    goto :goto_2a

    :catchall_22
    move-exception p1

    :goto_23
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_28
    throw p1

    :catch_29
    nop

    :goto_2a
    if-eqz v1, :cond_2f

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2f
    return v0
.end method

.method private static z(Ljava/io/FileDescriptor;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1c

    const-wide/16 v2, 0x0

    .line 2
    :try_start_9
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    const/4 p0, 0x1

    return p0

    :catch_10
    nop

    .line 3
    sget-boolean p0, Ln0/a;->w:Z

    if-eqz p0, :cond_1c

    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v1
.end method


# virtual methods
.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "tag shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Ln0/a;->f(Ljava/lang/String;)Ln0/a$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ba

    .line 3
    sget-object v2, Ln0/a;->q0:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 4
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln0/a$c;->j(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v2, "GPSTimeStamp"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 6
    iget p1, v0, Ln0/a$c;->a:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_45

    const/16 v2, 0xa

    if-eq p1, v2, :cond_45

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ln0/a$c;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 8
    :cond_45
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln0/a$e;

    if-eqz p1, :cond_96

    .line 9
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_54

    goto :goto_96

    :cond_54
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    aget-object v2, p1, v1

    iget-wide v2, v2, Ln0/a$e;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Ln0/a$e;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Ln0/a$e;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Ln0/a$e;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Ln0/a$e;->a:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Ln0/a$e;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 14
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_96
    :goto_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 16
    :cond_af
    :try_start_af
    iget-object p1, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln0/a$c;->h(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_b9} :catch_ba

    return-object p1

    :catch_ba
    :cond_ba
    return-object v1
.end method

.method public e(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "tag shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Ln0/a;->f(Ljava/lang/String;)Ln0/a$c;

    move-result-object p1

    if-nez p1, :cond_c

    return p2

    .line 3
    :cond_c
    :try_start_c
    iget-object v0, p0, Ln0/a;->h:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ln0/a$c;->i(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_12} :catch_13

    return p1

    :catch_13
    return p2
.end method

###### Class n0.a.C0205a (n0.a$a)
.class Ln0/a$a;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a;->g(Ln0/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field o:J

.field final synthetic p:Ln0/a$b;

.field final synthetic q:Ln0/a;


# direct methods
.method constructor <init>(Ln0/a;Ln0/a$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ln0/a$a;->q:Ln0/a;

    iput-object p2, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    cmp-long v3, p1, v0

    if-gez v3, :cond_c

    return v2

    .line 1
    :cond_c
    :try_start_c
    iget-wide v3, p0, Ln0/a$a;->o:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_2a

    cmp-long v5, v3, v0

    if-ltz v5, :cond_23

    .line 2
    iget-object v0, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-virtual {v0}, Ln0/a$b;->available()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_23

    return v2

    .line 3
    :cond_23
    iget-object v0, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-virtual {v0, p1, p2}, Ln0/a$b;->e(J)V

    .line 4
    iput-wide p1, p0, Ln0/a$a;->o:J

    .line 5
    :cond_2a
    iget-object p1, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-virtual {p1}, Ln0/a$b;->available()I

    move-result p1

    if-le p5, p1, :cond_38

    .line 6
    iget-object p1, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-virtual {p1}, Ln0/a$b;->available()I

    move-result p5

    .line 7
    :cond_38
    iget-object p1, p0, Ln0/a$a;->p:Ln0/a$b;

    invoke-virtual {p1, p3, p4, p5}, Ln0/a$b;->read([BII)I

    move-result p1

    if-ltz p1, :cond_47

    .line 8
    iget-wide p2, p0, Ln0/a$a;->o:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Ln0/a$a;->o:J
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_46} :catch_47

    return p1

    :catch_47
    :cond_47
    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Ln0/a$a;->o:J

    return v2
.end method

###### Class n0.a.b (n0.a$b)
.class Ln0/a$b;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final s:Ljava/nio/ByteOrder;

.field private static final t:Ljava/nio/ByteOrder;


# instance fields
.field private o:Ljava/io/DataInputStream;

.field private p:Ljava/nio/ByteOrder;

.field final q:I

.field r:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ln0/a$b;->s:Ljava/nio/ByteOrder;

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Ln0/a$b;->t:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Ln0/a$b;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    .line 4
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result p1

    iput p1, p0, Ln0/a$b;->q:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ln0/a$b;->r:I

    .line 7
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->mark(I)V

    .line 8
    iput-object p2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ln0/a$b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Ln0/a$b;->q:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    return v0
.end method

.method public d()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln0/a$b;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public e(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-lez v3, :cond_17

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/a$b;->r:I

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 4
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    iget v1, p0, Ln0/a$b;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    goto :goto_19

    :cond_17
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_19
    long-to-int p2, p1

    .line 5
    invoke-virtual {p0, p2}, Ln0/a$b;->skipBytes(I)I

    move-result p1

    if-ne p1, p2, :cond_21

    return-void

    .line 6
    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t seek up to the byteCount"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/nio/ByteOrder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    .line 4
    iget p2, p0, Ln0/a$b;->r:I

    add-int/2addr p2, p1

    iput p2, p0, Ln0/a$b;->r:I

    return p1
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_1a

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_14

    int-to-byte v0, v0

    return v0

    .line 4
    :cond_14
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 5
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln0/a$b;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln0/a$b;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget v0, p0, Ln0/a$b;->r:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/a$b;->r:I

    .line 7
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_1e

    .line 8
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_16

    return-void

    .line 9
    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/2addr v0, p3

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_1a

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_12

    return-void

    .line 4
    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_65

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 5
    iget-object v2, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 6
    iget-object v3, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_5f

    .line 7
    iget-object v4, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    sget-object v5, Ln0/a$b;->s:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_38

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    .line 8
    :cond_38
    sget-object v5, Ln0/a$b;->t:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_46

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 9
    :cond_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 11
    :cond_65
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public readLong()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ln0/a$b;->r:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Ln0/a$b;->r:I

    .line 2
    iget v3, v0, Ln0/a$b;->q:I

    if-gt v1, v3, :cond_b9

    .line 3
    iget-object v1, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 4
    iget-object v3, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 5
    iget-object v4, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 6
    iget-object v5, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 7
    iget-object v6, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 8
    iget-object v7, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 9
    iget-object v8, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 10
    iget-object v9, v0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v9

    or-int v10, v1, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int/2addr v10, v6

    or-int/2addr v10, v7

    or-int/2addr v10, v8

    or-int/2addr v10, v9

    if-ltz v10, :cond_b3

    .line 11
    iget-object v10, v0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    sget-object v11, Ln0/a$b;->s:Ljava/nio/ByteOrder;

    const/16 v12, 0x10

    const/16 v13, 0x18

    const/16 v14, 0x20

    const/16 v15, 0x28

    const/16 v16, 0x30

    const/16 v17, 0x38

    if-ne v10, v11, :cond_78

    int-to-long v9, v9

    shl-long v9, v9, v17

    move/from16 v18, v3

    int-to-long v2, v8

    shl-long v2, v2, v16

    add-long/2addr v9, v2

    int-to-long v2, v7

    shl-long/2addr v2, v15

    add-long/2addr v9, v2

    int-to-long v2, v6

    shl-long/2addr v2, v14

    add-long/2addr v9, v2

    int-to-long v2, v5

    shl-long/2addr v2, v13

    add-long/2addr v9, v2

    int-to-long v2, v4

    shl-long/2addr v2, v12

    add-long/2addr v9, v2

    move/from16 v2, v18

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v9, v2

    int-to-long v1, v1

    add-long/2addr v9, v1

    return-wide v9

    :cond_78
    move v2, v3

    .line 12
    sget-object v3, Ln0/a$b;->t:Ljava/nio/ByteOrder;

    if-ne v10, v3, :cond_9a

    int-to-long v11, v1

    shl-long v11, v11, v17

    int-to-long v1, v2

    shl-long v1, v1, v16

    add-long/2addr v11, v1

    int-to-long v1, v4

    shl-long/2addr v1, v15

    add-long/2addr v11, v1

    int-to-long v1, v5

    shl-long/2addr v1, v14

    add-long/2addr v11, v1

    int-to-long v1, v6

    shl-long/2addr v1, v13

    add-long/2addr v11, v1

    int-to-long v1, v7

    const/16 v4, 0x10

    shl-long/2addr v1, v4

    add-long/2addr v11, v1

    int-to-long v1, v8

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v11, v1

    int-to-long v1, v9

    add-long/2addr v11, v1

    return-wide v11

    .line 13
    :cond_9a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_b3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 15
    :cond_b9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_4d

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_47

    .line 5
    iget-object v2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    sget-object v3, Ln0/a$b;->s:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_25

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    .line 6
    :cond_25
    sget-object v3, Ln0/a$b;->t:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2e

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 7
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_47
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 9
    :cond_4d
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->r:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln0/a$b;->r:I

    .line 2
    iget v1, p0, Ln0/a$b;->q:I

    if-gt v0, v1, :cond_4b

    .line 3
    iget-object v0, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_45

    .line 5
    iget-object v2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    sget-object v3, Ln0/a$b;->s:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_24

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    .line 6
    :cond_24
    sget-object v3, Ln0/a$b;->t:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2c

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    .line 7
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln0/a$b;->p:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_45
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 9
    :cond_4b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln0/a$b;->q:I

    iget v1, p0, Ln0/a$b;->r:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_16

    .line 2
    iget-object v1, p0, Ln0/a$b;->o:Ljava/io/DataInputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    .line 3
    :cond_16
    iget p1, p0, Ln0/a$b;->r:I

    add-int/2addr p1, v0

    iput p1, p0, Ln0/a$b;->r:I

    return v0
.end method

###### Class n0.a.c (n0.a$c)
.class Ln0/a$c;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:[B


# direct methods
.method constructor <init>(IIJ[B)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ln0/a$c;->a:I

    .line 4
    iput p2, p0, Ln0/a$c;->b:I

    .line 5
    iput-wide p3, p0, Ln0/a$c;->c:J

    .line 6
    iput-object p5, p0, Ln0/a$c;->d:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Ln0/a$c;-><init>(IIJ[B)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ln0/a$c;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ln0/a;->s0:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    new-instance v0, Ln0/a$c;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Ln0/a$c;-><init>(II[B)V

    return-object v0
.end method

.method public static b(JLjava/nio/ByteOrder;)Ln0/a$c;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 1
    invoke-static {v0, p2}, Ln0/a$c;->c([JLjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static c([JLjava/nio/ByteOrder;)Ln0/a$c;
    .registers 7

    .line 1
    sget-object v0, Ln0/a;->Y:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_1e

    aget-wide v3, p0, v2

    long-to-int v4, v3

    .line 4
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 5
    :cond_1e
    new-instance p1, Ln0/a$c;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Ln0/a$c;-><init>(II[B)V

    return-object p1
.end method

.method public static d(Ln0/a$e;Ljava/nio/ByteOrder;)Ln0/a$c;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ln0/a$e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0, p1}, Ln0/a$c;->e([Ln0/a$e;Ljava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static e([Ln0/a$e;Ljava/nio/ByteOrder;)Ln0/a$c;
    .registers 8

    .line 1
    sget-object v0, Ln0/a;->Y:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_26

    aget-object v3, p0, v2

    .line 4
    iget-wide v4, v3, Ln0/a$e;->a:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-wide v3, v3, Ln0/a$e;->b:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6
    :cond_26
    new-instance p1, Ln0/a$c;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Ln0/a$c;-><init>(II[B)V

    return-object p1
.end method

.method public static f(ILjava/nio/ByteOrder;)Ln0/a$c;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 1
    invoke-static {v0, p1}, Ln0/a$c;->g([ILjava/nio/ByteOrder;)Ln0/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static g([ILjava/nio/ByteOrder;)Ln0/a$c;
    .registers 6

    .line 1
    sget-object v0, Ln0/a;->Y:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_1e

    aget v3, p0, v2

    int-to-short v3, v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 5
    :cond_1e
    new-instance p1, Ln0/a$c;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Ln0/a$c;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public h(Ljava/nio/ByteOrder;)D
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 5
    check-cast p1, [J

    .line 6
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 7
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3b

    .line 10
    check-cast p1, [I

    .line 11
    array-length v0, p1

    if-ne v0, v3, :cond_35

    .line 12
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 13
    :cond_35
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3b
    instance-of v0, p1, [D

    if-eqz v0, :cond_4d

    .line 15
    check-cast p1, [D

    .line 16
    array-length v0, p1

    if-ne v0, v3, :cond_47

    .line 17
    aget-wide v0, p1, v1

    return-wide v0

    .line 18
    :cond_47
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4d
    instance-of v0, p1, [Ln0/a$e;

    if-eqz v0, :cond_63

    .line 20
    check-cast p1, [Ln0/a$e;

    .line 21
    array-length v0, p1

    if-ne v0, v3, :cond_5d

    .line 22
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ln0/a$e;->a()D

    move-result-wide v0

    return-wide v0

    .line 23
    :cond_5d
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_63
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6b
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/nio/ByteOrder;)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 5
    check-cast p1, [J

    .line 6
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 7
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    .line 10
    check-cast p1, [I

    .line 11
    array-length v0, p1

    if-ne v0, v3, :cond_34

    .line 12
    aget p1, p1, v1

    return p1

    .line 13
    :cond_34
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3a
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_42
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Ln0/a$c;->k(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 2
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 6
    check-cast p1, [J

    .line 7
    :cond_1d
    :goto_1d
    array-length v0, p1

    if-ge v4, v0, :cond_2e

    .line 8
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 9
    array-length v0, p1

    if-eq v4, v0, :cond_1d

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 11
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_33
    instance-of v2, p1, [I

    if-eqz v2, :cond_4f

    .line 13
    check-cast p1, [I

    .line 14
    :cond_39
    :goto_39
    array-length v0, p1

    if-ge v4, v0, :cond_4a

    .line 15
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 16
    array-length v0, p1

    if-eq v4, v0, :cond_39

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 18
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4f
    instance-of v2, p1, [D

    if-eqz v2, :cond_6b

    .line 20
    check-cast p1, [D

    .line 21
    :cond_55
    :goto_55
    array-length v0, p1

    if-ge v4, v0, :cond_66

    .line 22
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 23
    array-length v0, p1

    if-eq v4, v0, :cond_55

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 25
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_6b
    instance-of v2, p1, [Ln0/a$e;

    if-eqz v2, :cond_95

    .line 27
    check-cast p1, [Ln0/a$e;

    .line 28
    :cond_71
    :goto_71
    array-length v0, p1

    if-ge v4, v0, :cond_90

    .line 29
    aget-object v0, p1, v4

    iget-wide v5, v0, Ln0/a$e;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    aget-object v0, p1, v4

    iget-wide v5, v0, Ln0/a$e;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 32
    array-length v0, p1

    if-eq v4, v0, :cond_71

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 34
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_95
    return-object v0
.end method

.method k(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 12

    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 1
    :try_start_5
    new-instance v3, Ln0/a$b;

    iget-object v4, p0, Ln0/a$c;->d:[B

    invoke-direct {v3, v4}, Ln0/a$b;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_189
    .catchall {:try_start_5 .. :try_end_c} :catchall_187

    .line 2
    :try_start_c
    invoke-virtual {v3, p1}, Ln0/a$b;->f(Ljava/nio/ByteOrder;)V

    .line 3
    iget p1, p0, Ln0/a$c;->a:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1aa

    goto/16 :goto_17c

    .line 4
    :pswitch_18
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [D

    .line 5
    :goto_1c
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_29

    .line 6
    invoke-virtual {v3}, Ln0/a$b;->readDouble()D

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_185
    .catchall {:try_start_c .. :try_end_26} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 7
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    .line 8
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-object p1

    .line 9
    :pswitch_32
    :try_start_32
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [D

    .line 10
    :goto_36
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_44

    .line 11
    invoke-virtual {v3}, Ln0/a$b;->readFloat()F

    move-result v4

    float-to-double v6, v4

    aput-wide v6, p1, v5
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_185
    .catchall {:try_start_32 .. :try_end_41} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 12
    :cond_44
    :try_start_44
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 13
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-object p1

    .line 14
    :pswitch_4d
    :try_start_4d
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [Ln0/a$e;

    .line 15
    :goto_51
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_69

    .line 16
    invoke-virtual {v3}, Ln0/a$b;->readInt()I

    move-result v4

    int-to-long v6, v4

    .line 17
    invoke-virtual {v3}, Ln0/a$b;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 18
    new-instance v4, Ln0/a$e;

    invoke-direct {v4, v6, v7, v8, v9}, Ln0/a$e;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_66} :catch_185
    .catchall {:try_start_4d .. :try_end_66} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 19
    :cond_69
    :try_start_69
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v2

    .line 20
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_71
    return-object p1

    .line 21
    :pswitch_72
    :try_start_72
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [I

    .line 22
    :goto_76
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_83

    .line 23
    invoke-virtual {v3}, Ln0/a$b;->readInt()I

    move-result v4

    aput v4, p1, v5
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_80} :catch_185
    .catchall {:try_start_72 .. :try_end_80} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 24
    :cond_83
    :try_start_83
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception v2

    .line 25
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    return-object p1

    .line 26
    :pswitch_8c
    :try_start_8c
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [I

    .line 27
    :goto_90
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_9d

    .line 28
    invoke-virtual {v3}, Ln0/a$b;->readShort()S

    move-result v4

    aput v4, p1, v5
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9a} :catch_185
    .catchall {:try_start_8c .. :try_end_9a} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 29
    :cond_9d
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a5

    :catch_a1
    move-exception v2

    .line 30
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a5
    return-object p1

    .line 31
    :pswitch_a6
    :try_start_a6
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [Ln0/a$e;

    .line 32
    :goto_aa
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_c0

    .line 33
    invoke-virtual {v3}, Ln0/a$b;->d()J

    move-result-wide v6

    .line 34
    invoke-virtual {v3}, Ln0/a$b;->d()J

    move-result-wide v8

    .line 35
    new-instance v4, Ln0/a$e;

    invoke-direct {v4, v6, v7, v8, v9}, Ln0/a$e;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_bd} :catch_185
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    .line 36
    :cond_c0
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c8

    :catch_c4
    move-exception v2

    .line 37
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c8
    return-object p1

    .line 38
    :pswitch_c9
    :try_start_c9
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [J

    .line 39
    :goto_cd
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_da

    .line 40
    invoke-virtual {v3}, Ln0/a$b;->d()J

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d7} :catch_185
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 41
    :cond_da
    :try_start_da
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception v2

    .line 42
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e2
    return-object p1

    .line 43
    :pswitch_e3
    :try_start_e3
    iget p1, p0, Ln0/a$c;->b:I

    new-array p1, p1, [I

    .line 44
    :goto_e7
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_f4

    .line 45
    invoke-virtual {v3}, Ln0/a$b;->readUnsignedShort()I

    move-result v4

    aput v4, p1, v5
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f1} :catch_185
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_19b

    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    .line 46
    :cond_f4
    :try_start_f4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_fc

    :catch_f8
    move-exception v2

    .line 47
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fc
    return-object p1

    .line 48
    :pswitch_fd
    :try_start_fd
    iget p1, p0, Ln0/a$c;->b:I

    sget-object v6, Ln0/a;->Z:[B

    array-length v6, v6

    if-lt p1, v6, :cond_11a

    const/4 p1, 0x0

    .line 49
    :goto_105
    sget-object v6, Ln0/a;->Z:[B

    array-length v7, v6

    if-ge p1, v7, :cond_117

    .line 50
    iget-object v7, p0, Ln0/a$c;->d:[B

    aget-byte v7, v7, p1

    aget-byte v8, v6, p1

    if-eq v7, v8, :cond_114

    const/4 v4, 0x0

    goto :goto_117

    :cond_114
    add-int/lit8 p1, p1, 0x1

    goto :goto_105

    :cond_117
    :goto_117
    if-eqz v4, :cond_11a

    .line 51
    array-length v5, v6

    .line 52
    :cond_11a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    :goto_11f
    iget v4, p0, Ln0/a$c;->b:I

    if-ge v5, v4, :cond_13b

    .line 54
    iget-object v4, p0, Ln0/a$c;->d:[B

    aget-byte v4, v4, v5

    if-nez v4, :cond_12a

    goto :goto_13b

    :cond_12a
    const/16 v6, 0x20

    if-lt v4, v6, :cond_133

    int-to-char v4, v4

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_138

    :cond_133
    const/16 v4, 0x3f

    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_138
    add-int/lit8 v5, v5, 0x1

    goto :goto_11f

    .line 57
    :cond_13b
    :goto_13b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_13f} :catch_185
    .catchall {:try_start_fd .. :try_end_13f} :catchall_19b

    .line 58
    :try_start_13f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_143

    goto :goto_147

    :catch_143
    move-exception v2

    .line 59
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_147
    return-object p1

    .line 60
    :pswitch_148
    :try_start_148
    iget-object p1, p0, Ln0/a$c;->d:[B

    array-length v6, p1

    if-ne v6, v4, :cond_16c

    aget-byte v6, p1, v5

    if-ltz v6, :cond_16c

    aget-byte v6, p1, v5

    if-gt v6, v4, :cond_16c

    .line 61
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [C

    aget-byte p1, p1, v5

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    aput-char p1, v4, v5

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_163} :catch_185
    .catchall {:try_start_148 .. :try_end_163} :catchall_19b

    .line 62
    :try_start_163
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_167

    goto :goto_16b

    :catch_167
    move-exception p1

    .line 63
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16b
    return-object v6

    .line 64
    :cond_16c
    :try_start_16c
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ln0/a;->s0:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_173} :catch_185
    .catchall {:try_start_16c .. :try_end_173} :catchall_19b

    .line 65
    :try_start_173
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_17b

    :catch_177
    move-exception p1

    .line 66
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17b
    return-object v4

    .line 67
    :goto_17c
    :try_start_17c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_180

    goto :goto_184

    :catch_180
    move-exception p1

    .line 68
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_184
    return-object v2

    :catch_185
    move-exception p1

    goto :goto_18b

    :catchall_187
    move-exception p1

    goto :goto_19d

    :catch_189
    move-exception p1

    move-object v3, v2

    :goto_18b
    :try_start_18b
    const-string v4, "IOException occurred during reading a value"

    .line 69
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_190
    .catchall {:try_start_18b .. :try_end_190} :catchall_19b

    if-eqz v3, :cond_19a

    .line 70
    :try_start_192
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_196

    goto :goto_19a

    :catch_196
    move-exception p1

    .line 71
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19a
    :goto_19a
    return-object v2

    :catchall_19b
    move-exception p1

    move-object v2, v3

    :goto_19d
    if-eqz v2, :cond_1a7

    .line 72
    :try_start_19f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1a3

    goto :goto_1a7

    :catch_1a3
    move-exception v2

    .line 73
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_1a7
    :goto_1a7
    goto :goto_1a9

    :goto_1a8
    throw p1

    :goto_1a9
    goto :goto_1a8

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_148
        :pswitch_fd
        :pswitch_e3
        :pswitch_c9
        :pswitch_a6
        :pswitch_148
        :pswitch_fd
        :pswitch_8c
        :pswitch_72
        :pswitch_4d
        :pswitch_32
        :pswitch_18
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ln0/a;->X:[Ljava/lang/String;

    iget v2, p0, Ln0/a$c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/a$c;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class n0.a.d (n0.a$d)
.class Ln0/a$d;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln0/a$d;->b:Ljava/lang/String;

    .line 3
    iput p2, p0, Ln0/a$d;->a:I

    .line 4
    iput p3, p0, Ln0/a$d;->c:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Ln0/a$d;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ln0/a$d;->b:Ljava/lang/String;

    .line 8
    iput p2, p0, Ln0/a$d;->a:I

    .line 9
    iput p3, p0, Ln0/a$d;->c:I

    .line 10
    iput p4, p0, Ln0/a$d;->d:I

    return-void
.end method


# virtual methods
.method a(I)Z
    .registers 6

    .line 1
    iget v0, p0, Ln0/a$d;->c:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_31

    if-ne p1, v1, :cond_9

    goto :goto_31

    :cond_9
    if-eq v0, p1, :cond_31

    .line 2
    iget v1, p0, Ln0/a$d;->d:I

    if-ne v1, p1, :cond_10

    goto :goto_31

    :cond_10
    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    if-ne v1, v3, :cond_19

    :cond_15
    const/4 v3, 0x3

    if-ne p1, v3, :cond_19

    return v2

    :cond_19
    const/16 v3, 0x9

    if-eq v0, v3, :cond_1f

    if-ne v1, v3, :cond_24

    :cond_1f
    const/16 v3, 0x8

    if-ne p1, v3, :cond_24

    return v2

    :cond_24
    const/16 v3, 0xc

    if-eq v0, v3, :cond_2a

    if-ne v1, v3, :cond_2f

    :cond_2a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2f

    return v2

    :cond_2f
    const/4 p1, 0x0

    return p1

    :cond_31
    :goto_31
    return v2
.end method

###### Class n0.a.e (n0.a$e)
.class Ln0/a$e;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method constructor <init>(JJ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_10

    .line 2
    iput-wide v0, p0, Ln0/a$e;->a:J

    const-wide/16 p1, 0x1

    .line 3
    iput-wide p1, p0, Ln0/a$e;->b:J

    return-void

    .line 4
    :cond_10
    iput-wide p1, p0, Ln0/a$e;->a:J

    .line 5
    iput-wide p3, p0, Ln0/a$e;->b:J

    return-void
.end method


# virtual methods
.method public a()D
    .registers 5

    .line 1
    iget-wide v0, p0, Ln0/a$e;->a:J

    long-to-double v0, v0

    iget-wide v2, p0, Ln0/a$e;->b:J

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ln0/a$e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln0/a$e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
