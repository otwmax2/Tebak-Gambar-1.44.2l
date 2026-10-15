###### Class k3.o (k3.o)
.class public abstract Lk3/o;
.super Ljava/lang/Object;
.source "NetworkConnectionInfo.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/o$a;,
        Lk3/o$b;,
        Lk3/o$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lk3/o$a;
    .registers 1

    .line 1
    new-instance v0, Lk3/i$b;

    invoke-direct {v0}, Lk3/i$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lk3/o$b;
.end method

.method public abstract c()Lk3/o$c;
.end method

###### Class k3.o.a (k3.o$a)
.class public abstract Lk3/o$a;
.super Ljava/lang/Object;
.source "NetworkConnectionInfo.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lk3/o;
.end method

.method public abstract b(Lk3/o$b;)Lk3/o$a;
.end method

.method public abstract c(Lk3/o$c;)Lk3/o$a;
.end method

###### Class k3.o.b (k3.o$b)
.class public final enum Lk3/o$b;
.super Ljava/lang/Enum;
.source "NetworkConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk3/o$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lk3/o$b;

.field public static final enum B:Lk3/o$b;

.field public static final enum C:Lk3/o$b;

.field public static final enum D:Lk3/o$b;

.field public static final enum E:Lk3/o$b;

.field public static final enum F:Lk3/o$b;

.field public static final enum G:Lk3/o$b;

.field public static final enum H:Lk3/o$b;

.field public static final enum I:Lk3/o$b;

.field public static final enum J:Lk3/o$b;

.field private static final K:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lk3/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic L:[Lk3/o$b;

.field public static final enum p:Lk3/o$b;

.field public static final enum q:Lk3/o$b;

.field public static final enum r:Lk3/o$b;

.field public static final enum s:Lk3/o$b;

.field public static final enum t:Lk3/o$b;

.field public static final enum u:Lk3/o$b;

.field public static final enum v:Lk3/o$b;

.field public static final enum w:Lk3/o$b;

.field public static final enum x:Lk3/o$b;

.field public static final enum y:Lk3/o$b;

.field public static final enum z:Lk3/o$b;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 1
    new-instance v0, Lk3/o$b;

    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/o$b;->p:Lk3/o$b;

    .line 2
    new-instance v1, Lk3/o$b;

    const-string v3, "GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk3/o$b;->q:Lk3/o$b;

    .line 3
    new-instance v3, Lk3/o$b;

    const-string v5, "EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk3/o$b;->r:Lk3/o$b;

    .line 4
    new-instance v5, Lk3/o$b;

    const-string v7, "UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk3/o$b;->s:Lk3/o$b;

    .line 5
    new-instance v7, Lk3/o$b;

    const-string v9, "CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lk3/o$b;->t:Lk3/o$b;

    .line 6
    new-instance v9, Lk3/o$b;

    const-string v11, "EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lk3/o$b;->u:Lk3/o$b;

    .line 7
    new-instance v11, Lk3/o$b;

    const-string v13, "EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lk3/o$b;->v:Lk3/o$b;

    .line 8
    new-instance v13, Lk3/o$b;

    const-string v15, "RTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lk3/o$b;->w:Lk3/o$b;

    .line 9
    new-instance v15, Lk3/o$b;

    const-string v14, "HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lk3/o$b;->x:Lk3/o$b;

    .line 10
    new-instance v14, Lk3/o$b;

    const-string v12, "HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lk3/o$b;->y:Lk3/o$b;

    .line 11
    new-instance v12, Lk3/o$b;

    const-string v10, "HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lk3/o$b;->z:Lk3/o$b;

    .line 12
    new-instance v10, Lk3/o$b;

    const-string v8, "IDEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lk3/o$b;->A:Lk3/o$b;

    .line 13
    new-instance v8, Lk3/o$b;

    const-string v6, "EVDO_B"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lk3/o$b;->B:Lk3/o$b;

    .line 14
    new-instance v6, Lk3/o$b;

    const-string v4, "LTE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk3/o$b;->C:Lk3/o$b;

    .line 15
    new-instance v4, Lk3/o$b;

    const-string v2, "EHRPD"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk3/o$b;->D:Lk3/o$b;

    .line 16
    new-instance v2, Lk3/o$b;

    const-string v6, "HSPAP"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lk3/o$b;->E:Lk3/o$b;

    .line 17
    new-instance v6, Lk3/o$b;

    const-string v4, "GSM"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk3/o$b;->F:Lk3/o$b;

    .line 18
    new-instance v4, Lk3/o$b;

    const-string v2, "TD_SCDMA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk3/o$b;->G:Lk3/o$b;

    .line 19
    new-instance v2, Lk3/o$b;

    const-string v6, "IWLAN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lk3/o$b;->H:Lk3/o$b;

    .line 20
    new-instance v6, Lk3/o$b;

    const-string v4, "LTE_CA"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk3/o$b;->I:Lk3/o$b;

    .line 21
    new-instance v4, Lk3/o$b;

    const-string v2, "COMBINED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    move-object/from16 v23, v8

    const/16 v8, 0x64

    invoke-direct {v4, v2, v6, v8}, Lk3/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk3/o$b;->J:Lk3/o$b;

    const/16 v2, 0x15

    new-array v2, v2, [Lk3/o$b;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v8, 0x1

    aput-object v1, v2, v8

    const/4 v8, 0x2

    aput-object v3, v2, v8

    const/4 v8, 0x3

    aput-object v5, v2, v8

    const/4 v8, 0x4

    aput-object v7, v2, v8

    const/4 v8, 0x5

    aput-object v9, v2, v8

    const/4 v8, 0x6

    aput-object v11, v2, v8

    const/4 v8, 0x7

    aput-object v13, v2, v8

    const/16 v8, 0x8

    aput-object v15, v2, v8

    const/16 v8, 0x9

    aput-object v14, v2, v8

    const/16 v8, 0xa

    aput-object v12, v2, v8

    const/16 v8, 0xb

    aput-object v10, v2, v8

    const/16 v8, 0xc

    aput-object v23, v2, v8

    const/16 v8, 0xd

    aput-object v16, v2, v8

    const/16 v8, 0xe

    aput-object v17, v2, v8

    const/16 v8, 0xf

    aput-object v18, v2, v8

    const/16 v8, 0x10

    aput-object v19, v2, v8

    const/16 v8, 0x11

    aput-object v20, v2, v8

    const/16 v8, 0x12

    aput-object v21, v2, v8

    const/16 v8, 0x13

    aput-object v22, v2, v8

    aput-object v4, v2, v6

    .line 22
    sput-object v2, Lk3/o$b;->L:[Lk3/o$b;

    .line 23
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lk3/o$b;->K:Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 26
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 27
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 28
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 29
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 30
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 31
    invoke-virtual {v2, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x8

    .line 32
    invoke-virtual {v2, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 33
    invoke-virtual {v2, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 34
    invoke-virtual {v2, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 35
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v23

    const/16 v1, 0xc

    .line 36
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v16

    const/16 v1, 0xd

    .line 37
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v17

    const/16 v1, 0xe

    .line 38
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v18

    const/16 v1, 0xf

    .line 39
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v19

    const/16 v1, 0x10

    .line 40
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v20

    const/16 v1, 0x11

    .line 41
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v21

    const/16 v1, 0x12

    .line 42
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v22

    const/16 v1, 0x13

    .line 43
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lk3/o$b;->o:I

    return-void
.end method

.method public static c(I)Lk3/o$b;
    .registers 2

    .line 1
    sget-object v0, Lk3/o$b;->K:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk3/o$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk3/o$b;
    .registers 2

    .line 1
    const-class v0, Lk3/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk3/o$b;

    return-object p0
.end method

.method public static values()[Lk3/o$b;
    .registers 1

    .line 1
    sget-object v0, Lk3/o$b;->L:[Lk3/o$b;

    invoke-virtual {v0}, [Lk3/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk3/o$b;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lk3/o$b;->o:I

    return v0
.end method

###### Class k3.o.c (k3.o$c)
.class public final enum Lk3/o$c;
.super Ljava/lang/Enum;
.source "NetworkConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk3/o$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lk3/o$c;

.field public static final enum B:Lk3/o$c;

.field public static final enum C:Lk3/o$c;

.field public static final enum D:Lk3/o$c;

.field public static final enum E:Lk3/o$c;

.field public static final enum F:Lk3/o$c;

.field public static final enum G:Lk3/o$c;

.field public static final enum H:Lk3/o$c;

.field private static final I:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lk3/o$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic J:[Lk3/o$c;

.field public static final enum p:Lk3/o$c;

.field public static final enum q:Lk3/o$c;

.field public static final enum r:Lk3/o$c;

.field public static final enum s:Lk3/o$c;

.field public static final enum t:Lk3/o$c;

.field public static final enum u:Lk3/o$c;

.field public static final enum v:Lk3/o$c;

.field public static final enum w:Lk3/o$c;

.field public static final enum x:Lk3/o$c;

.field public static final enum y:Lk3/o$c;

.field public static final enum z:Lk3/o$c;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 40

    .line 1
    new-instance v0, Lk3/o$c;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk3/o$c;->p:Lk3/o$c;

    .line 2
    new-instance v1, Lk3/o$c;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk3/o$c;->q:Lk3/o$c;

    .line 3
    new-instance v3, Lk3/o$c;

    const-string v5, "MOBILE_MMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk3/o$c;->r:Lk3/o$c;

    .line 4
    new-instance v5, Lk3/o$c;

    const-string v7, "MOBILE_SUPL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk3/o$c;->s:Lk3/o$c;

    .line 5
    new-instance v7, Lk3/o$c;

    const-string v9, "MOBILE_DUN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lk3/o$c;->t:Lk3/o$c;

    .line 6
    new-instance v9, Lk3/o$c;

    const-string v11, "MOBILE_HIPRI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lk3/o$c;->u:Lk3/o$c;

    .line 7
    new-instance v11, Lk3/o$c;

    const-string v13, "WIMAX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lk3/o$c;->v:Lk3/o$c;

    .line 8
    new-instance v13, Lk3/o$c;

    const-string v15, "BLUETOOTH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lk3/o$c;->w:Lk3/o$c;

    .line 9
    new-instance v15, Lk3/o$c;

    const-string v14, "DUMMY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lk3/o$c;->x:Lk3/o$c;

    .line 10
    new-instance v14, Lk3/o$c;

    const-string v12, "ETHERNET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lk3/o$c;->y:Lk3/o$c;

    .line 11
    new-instance v12, Lk3/o$c;

    const-string v10, "MOBILE_FOTA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lk3/o$c;->z:Lk3/o$c;

    .line 12
    new-instance v10, Lk3/o$c;

    const-string v8, "MOBILE_IMS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lk3/o$c;->A:Lk3/o$c;

    .line 13
    new-instance v8, Lk3/o$c;

    const-string v6, "MOBILE_CBS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lk3/o$c;->B:Lk3/o$c;

    .line 14
    new-instance v6, Lk3/o$c;

    const-string v4, "WIFI_P2P"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk3/o$c;->C:Lk3/o$c;

    .line 15
    new-instance v4, Lk3/o$c;

    const-string v2, "MOBILE_IA"

    move-object/from16 v30, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk3/o$c;->D:Lk3/o$c;

    .line 16
    new-instance v2, Lk3/o$c;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v32, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lk3/o$c;->E:Lk3/o$c;

    .line 17
    new-instance v6, Lk3/o$c;

    const-string v4, "PROXY"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk3/o$c;->F:Lk3/o$c;

    .line 18
    new-instance v4, Lk3/o$c;

    const-string v2, "VPN"

    move-object/from16 v36, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk3/o$c;->G:Lk3/o$c;

    .line 19
    new-instance v2, Lk3/o$c;

    const-string v6, "NONE"

    move-object/from16 v38, v4

    const/16 v4, 0x12

    move-object/from16 v39, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Lk3/o$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lk3/o$c;->H:Lk3/o$c;

    const/16 v6, 0x13

    new-array v6, v6, [Lk3/o$c;

    const/16 v28, 0x0

    aput-object v0, v6, v28

    const/16 v26, 0x1

    aput-object v1, v6, v26

    const/16 v24, 0x2

    aput-object v3, v6, v24

    const/16 v22, 0x3

    aput-object v5, v6, v22

    const/16 v20, 0x4

    aput-object v7, v6, v20

    const/16 v18, 0x5

    aput-object v9, v6, v18

    const/16 v16, 0x6

    aput-object v11, v6, v16

    const/16 v17, 0x7

    aput-object v13, v6, v17

    const/16 v19, 0x8

    aput-object v15, v6, v19

    const/16 v21, 0x9

    aput-object v14, v6, v21

    const/16 v23, 0xa

    aput-object v12, v6, v23

    const/16 v25, 0xb

    aput-object v10, v6, v25

    const/16 v27, 0xc

    aput-object v39, v6, v27

    const/16 v29, 0xd

    aput-object v30, v6, v29

    const/16 v31, 0xe

    aput-object v32, v6, v31

    const/16 v33, 0xf

    aput-object v34, v6, v33

    const/16 v35, 0x10

    aput-object v36, v6, v35

    const/16 v37, 0x11

    aput-object v38, v6, v37

    aput-object v2, v6, v4

    .line 20
    sput-object v6, Lk3/o$c;->J:[Lk3/o$c;

    .line 21
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lk3/o$c;->I:Landroid/util/SparseArray;

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 24
    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 25
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 26
    invoke-virtual {v4, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 27
    invoke-virtual {v4, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 28
    invoke-virtual {v4, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 29
    invoke-virtual {v4, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x8

    .line 30
    invoke-virtual {v4, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 31
    invoke-virtual {v4, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 32
    invoke-virtual {v4, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 33
    invoke-virtual {v4, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v39

    const/16 v1, 0xc

    .line 34
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v30

    const/16 v1, 0xd

    .line 35
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v32

    const/16 v1, 0xe

    .line 36
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v34

    const/16 v1, 0xf

    .line 37
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v36

    const/16 v1, 0x10

    .line 38
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v38

    const/16 v1, 0x11

    .line 39
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lk3/o$c;->o:I

    return-void
.end method

.method public static c(I)Lk3/o$c;
    .registers 2

    .line 1
    sget-object v0, Lk3/o$c;->I:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk3/o$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk3/o$c;
    .registers 2

    .line 1
    const-class v0, Lk3/o$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk3/o$c;

    return-object p0
.end method

.method public static values()[Lk3/o$c;
    .registers 1

    .line 1
    sget-object v0, Lk3/o$c;->J:[Lk3/o$c;

    invoke-virtual {v0}, [Lk3/o$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk3/o$c;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lk3/o$c;->o:I

    return v0
.end method
