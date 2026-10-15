###### Class androidx.datastore.preferences.protobuf.t1 (androidx.datastore.preferences.protobuf.t1)
.class public final Landroidx/datastore/preferences/protobuf/t1;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/t1$b;,
        Landroidx/datastore/preferences/protobuf/t1$c;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v2

    sput v2, Landroidx/datastore/preferences/protobuf/t1;->a:I

    const/4 v2, 0x4

    .line 2
    invoke-static {v0, v2}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v0

    sput v0, Landroidx/datastore/preferences/protobuf/t1;->b:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v2

    sput v2, Landroidx/datastore/preferences/protobuf/t1;->c:I

    .line 4
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v0

    sput v0, Landroidx/datastore/preferences/protobuf/t1;->d:I

    return-void
.end method

.method public static a(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static b(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static c(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

###### Class androidx.datastore.preferences.protobuf.t1.a (androidx.datastore.preferences.protobuf.t1$a)
.class synthetic Landroidx/datastore/preferences/protobuf/t1$a;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.datastore.preferences.protobuf.t1.b (androidx.datastore.preferences.protobuf.t1$b)
.class public enum Landroidx/datastore/preferences/protobuf/t1$b;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/t1$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum B:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum C:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum D:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum E:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum F:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum G:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum H:Landroidx/datastore/preferences/protobuf/t1$b;

.field private static final synthetic I:[Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum q:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum r:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum s:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum t:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum u:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum v:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum w:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum x:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum y:Landroidx/datastore/preferences/protobuf/t1$b;

.field public static final enum z:Landroidx/datastore/preferences/protobuf/t1$b;


# instance fields
.field private final o:Landroidx/datastore/preferences/protobuf/t1$c;

.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->s:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/t1$b;->q:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 2
    new-instance v1, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v2, Landroidx/datastore/preferences/protobuf/t1$c;->r:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->r:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 3
    new-instance v2, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v5, Landroidx/datastore/preferences/protobuf/t1$c;->q:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/t1$b;->s:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 4
    new-instance v7, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/t1$b;->t:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 5
    new-instance v9, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v11, Landroidx/datastore/preferences/protobuf/t1$c;->p:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/t1$b;->u:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 6
    new-instance v12, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v12, Landroidx/datastore/preferences/protobuf/t1$b;->v:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 7
    new-instance v14, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v14, Landroidx/datastore/preferences/protobuf/t1$b;->w:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 8
    new-instance v15, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->t:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v15, Landroidx/datastore/preferences/protobuf/t1$b;->x:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 9
    new-instance v4, Landroidx/datastore/preferences/protobuf/t1$b$a;

    sget-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->u:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Landroidx/datastore/preferences/protobuf/t1$b$a;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/t1$b;->y:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 10
    new-instance v6, Landroidx/datastore/preferences/protobuf/t1$b$b;

    sget-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Landroidx/datastore/preferences/protobuf/t1$b$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/t1$b;->z:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 11
    new-instance v3, Landroidx/datastore/preferences/protobuf/t1$b$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Landroidx/datastore/preferences/protobuf/t1$b$c;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/t1$b;->A:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 12
    new-instance v8, Landroidx/datastore/preferences/protobuf/t1$b$d;

    sget-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->v:Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Landroidx/datastore/preferences/protobuf/t1$b$d;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/t1$b;->B:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 13
    new-instance v6, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/t1$b;->C:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 14
    new-instance v10, Landroidx/datastore/preferences/protobuf/t1$b;

    sget-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->w:Landroidx/datastore/preferences/protobuf/t1$c;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->D:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 15
    new-instance v3, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/t1$b;->E:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 16
    new-instance v6, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/t1$b;->F:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 17
    new-instance v3, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/t1$b;->G:Landroidx/datastore/preferences/protobuf/t1$b;

    .line 18
    new-instance v8, Landroidx/datastore/preferences/protobuf/t1$b;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/t1$b;->H:Landroidx/datastore/preferences/protobuf/t1$b;

    const/16 v5, 0x12

    new-array v5, v5, [Landroidx/datastore/preferences/protobuf/t1$b;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    .line 19
    sput-object v5, Landroidx/datastore/preferences/protobuf/t1$b;->I:[Landroidx/datastore/preferences/protobuf/t1$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/t1$c;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/t1$b;->o:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 4
    iput p4, p0, Landroidx/datastore/preferences/protobuf/t1$b;->p:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;ILandroidx/datastore/preferences/protobuf/t1$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/t1$b;
    .registers 2

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/t1$b;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/t1$b;
    .registers 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/t1$b;->I:[Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/t1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/t1$b;

    return-object v0
.end method


# virtual methods
.method public c()Landroidx/datastore/preferences/protobuf/t1$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t1$b;->o:Landroidx/datastore/preferences/protobuf/t1$c;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/t1$b;->p:I

    return v0
.end method

###### Class androidx.datastore.preferences.protobuf.t1.b.a (androidx.datastore.preferences.protobuf.t1$b$a)
.class final enum Landroidx/datastore/preferences/protobuf/t1$b$a;
.super Landroidx/datastore/preferences/protobuf/t1$b;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;ILandroidx/datastore/preferences/protobuf/t1$a;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.t1.b.C0047b (androidx.datastore.preferences.protobuf.t1$b$b)
.class final enum Landroidx/datastore/preferences/protobuf/t1$b$b;
.super Landroidx/datastore/preferences/protobuf/t1$b;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;ILandroidx/datastore/preferences/protobuf/t1$a;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.t1.b.c (androidx.datastore.preferences.protobuf.t1$b$c)
.class final enum Landroidx/datastore/preferences/protobuf/t1$b$c;
.super Landroidx/datastore/preferences/protobuf/t1$b;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;ILandroidx/datastore/preferences/protobuf/t1$a;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.t1.b.d (androidx.datastore.preferences.protobuf.t1$b$d)
.class final enum Landroidx/datastore/preferences/protobuf/t1$b$d;
.super Landroidx/datastore/preferences/protobuf/t1$b;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/t1$b;-><init>(Ljava/lang/String;ILandroidx/datastore/preferences/protobuf/t1$c;ILandroidx/datastore/preferences/protobuf/t1$a;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.t1.c (androidx.datastore.preferences.protobuf.t1$c)
.class public final enum Landroidx/datastore/preferences/protobuf/t1$c;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/t1$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum q:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum r:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum s:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum t:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum u:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum v:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum w:Landroidx/datastore/preferences/protobuf/t1$c;

.field public static final enum x:Landroidx/datastore/preferences/protobuf/t1$c;

.field private static final synthetic y:[Landroidx/datastore/preferences/protobuf/t1$c;


# instance fields
.field private final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/t1$c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/t1$c;->p:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 2
    new-instance v2, Landroidx/datastore/preferences/protobuf/t1$c;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/t1$c;->q:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 3
    new-instance v3, Landroidx/datastore/preferences/protobuf/t1$c;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/t1$c;->r:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 4
    new-instance v4, Landroidx/datastore/preferences/protobuf/t1$c;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/t1$c;->s:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 5
    new-instance v6, Landroidx/datastore/preferences/protobuf/t1$c;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/t1$c;->t:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 6
    new-instance v8, Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v10, "STRING"

    const/4 v12, 0x5

    const-string v13, ""

    invoke-direct {v8, v10, v12, v13}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/t1$c;->u:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 7
    new-instance v10, Landroidx/datastore/preferences/protobuf/t1$c;

    sget-object v13, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/t1$c;->v:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 8
    new-instance v13, Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v14, "ENUM"

    const/4 v15, 0x7

    const/4 v12, 0x0

    invoke-direct {v13, v14, v15, v12}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v13, Landroidx/datastore/preferences/protobuf/t1$c;->w:Landroidx/datastore/preferences/protobuf/t1$c;

    .line 9
    new-instance v14, Landroidx/datastore/preferences/protobuf/t1$c;

    const-string v15, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v12}, Landroidx/datastore/preferences/protobuf/t1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    const/16 v12, 0x9

    new-array v12, v12, [Landroidx/datastore/preferences/protobuf/t1$c;

    aput-object v0, v12, v1

    aput-object v2, v12, v5

    aput-object v3, v12, v7

    aput-object v4, v12, v9

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v14, v12, v11

    .line 10
    sput-object v12, Landroidx/datastore/preferences/protobuf/t1$c;->y:[Landroidx/datastore/preferences/protobuf/t1$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/t1$c;->o:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/t1$c;
    .registers 2

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/t1$c;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/t1$c;
    .registers 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/t1$c;->y:[Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/t1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/t1$c;

    return-object v0
.end method
