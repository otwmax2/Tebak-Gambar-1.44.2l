###### Class z1.a (z1.a)
.class public final enum Lz1/a;
.super Ljava/lang/Enum;
.source "DecodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lz1/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum p:Lz1/a;

.field public static final enum q:Lz1/a;

.field public static final r:Lz1/a;

.field private static final synthetic s:[Lz1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lz1/a;

    const-string v1, "ALWAYS_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/a;->o:Lz1/a;

    .line 2
    new-instance v1, Lz1/a;

    const-string v3, "PREFER_ARGB_8888"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz1/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/a;->p:Lz1/a;

    .line 3
    new-instance v3, Lz1/a;

    const-string v5, "PREFER_RGB_565"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz1/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz1/a;->q:Lz1/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lz1/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lz1/a;->s:[Lz1/a;

    .line 5
    sput-object v3, Lz1/a;->r:Lz1/a;

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

.method public static valueOf(Ljava/lang/String;)Lz1/a;
    .registers 2

    .line 1
    const-class v0, Lz1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/a;

    return-object p0
.end method

.method public static values()[Lz1/a;
    .registers 1

    .line 1
    sget-object v0, Lz1/a;->s:[Lz1/a;

    invoke-virtual {v0}, [Lz1/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/a;

    return-object v0
.end method
