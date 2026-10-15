###### Class i.e (i.e)
.class public final Li/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:[I

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:[I

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:[I

.field public static final q:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    sput-object v1, Li/e;->a:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    sput-object v1, Li/e;->h:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    sput-object v1, Li/e;->k:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Li/e;->p:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010199

    aput v2, v0, v1

    sput-object v0, Li/e;->q:[I

    return-void

    nop

    :array_2c
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data

    :array_3c
    .array-data 4
        0x10100d0
        0x1010199
    .end array-data

    :array_44
    .array-data 4
        0x1010199
        0x1010449
        0x101044a
        0x101044b
    .end array-data

    :array_50
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data
.end method
