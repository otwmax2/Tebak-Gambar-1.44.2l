###### Class i7.a (i7.a)
.class public final enum Li7/a;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Li7/a;

.field public static final enum B:Li7/a;

.field public static final enum C:Li7/a;

.field public static final enum D:Li7/a;

.field public static final enum E:Li7/a;

.field private static final synthetic F:[Li7/a;

.field public static final enum o:Li7/a;

.field public static final enum p:Li7/a;

.field public static final enum q:Li7/a;

.field public static final enum r:Li7/a;

.field public static final enum s:Li7/a;

.field public static final enum t:Li7/a;

.field public static final enum u:Li7/a;

.field public static final enum v:Li7/a;

.field public static final enum w:Li7/a;

.field public static final enum x:Li7/a;

.field public static final enum y:Li7/a;

.field public static final enum z:Li7/a;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 1
    new-instance v0, Li7/a;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li7/a;->o:Li7/a;

    .line 2
    new-instance v1, Li7/a;

    const-string v3, "CODABAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li7/a;->p:Li7/a;

    .line 3
    new-instance v3, Li7/a;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li7/a;->q:Li7/a;

    .line 4
    new-instance v5, Li7/a;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li7/a;->r:Li7/a;

    .line 5
    new-instance v7, Li7/a;

    const-string v9, "CODE_128"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li7/a;->s:Li7/a;

    .line 6
    new-instance v9, Li7/a;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Li7/a;->t:Li7/a;

    .line 7
    new-instance v11, Li7/a;

    const-string v13, "EAN_8"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Li7/a;->u:Li7/a;

    .line 8
    new-instance v13, Li7/a;

    const-string v15, "EAN_13"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Li7/a;->v:Li7/a;

    .line 9
    new-instance v15, Li7/a;

    const-string v14, "ITF"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Li7/a;->w:Li7/a;

    .line 10
    new-instance v14, Li7/a;

    const-string v12, "MAXICODE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Li7/a;->x:Li7/a;

    .line 11
    new-instance v12, Li7/a;

    const-string v10, "PDF_417"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Li7/a;->y:Li7/a;

    .line 12
    new-instance v10, Li7/a;

    const-string v8, "QR_CODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Li7/a;->z:Li7/a;

    .line 13
    new-instance v8, Li7/a;

    const-string v6, "RSS_14"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Li7/a;->A:Li7/a;

    .line 14
    new-instance v6, Li7/a;

    const-string v4, "RSS_EXPANDED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Li7/a;->B:Li7/a;

    .line 15
    new-instance v4, Li7/a;

    const-string v2, "UPC_A"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Li7/a;->C:Li7/a;

    .line 16
    new-instance v2, Li7/a;

    const-string v6, "UPC_E"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li7/a;->D:Li7/a;

    .line 17
    new-instance v6, Li7/a;

    const-string v4, "UPC_EAN_EXTENSION"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Li7/a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Li7/a;->E:Li7/a;

    const/16 v4, 0x11

    new-array v4, v4, [Li7/a;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    .line 18
    sput-object v4, Li7/a;->F:[Li7/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li7/a;
    .registers 2

    .line 1
    const-class v0, Li7/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li7/a;

    return-object p0
.end method

.method public static values()[Li7/a;
    .registers 1

    .line 1
    sget-object v0, Li7/a;->F:[Li7/a;

    invoke-virtual {v0}, [Li7/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li7/a;

    return-object v0
.end method
