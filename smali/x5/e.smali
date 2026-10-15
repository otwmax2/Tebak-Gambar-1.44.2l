###### Class x5.e (x5.e)
.class final enum Lx5/e;
.super Ljava/lang/Enum;
.source "SettingsCacheBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx5/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lx5/e;

.field public static final enum p:Lx5/e;

.field public static final enum q:Lx5/e;

.field private static final synthetic r:[Lx5/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lx5/e;

    const-string v1, "USE_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx5/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx5/e;->o:Lx5/e;

    .line 2
    new-instance v1, Lx5/e;

    const-string v3, "SKIP_CACHE_LOOKUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx5/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx5/e;->p:Lx5/e;

    .line 3
    new-instance v3, Lx5/e;

    const-string v5, "IGNORE_CACHE_EXPIRATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx5/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx5/e;->q:Lx5/e;

    const/4 v5, 0x3

    new-array v5, v5, [Lx5/e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lx5/e;->r:[Lx5/e;

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

.method public static valueOf(Ljava/lang/String;)Lx5/e;
    .registers 2

    .line 1
    const-class v0, Lx5/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx5/e;

    return-object p0
.end method

.method public static values()[Lx5/e;
    .registers 1

    .line 1
    sget-object v0, Lx5/e;->r:[Lx5/e;

    invoke-virtual {v0}, [Lx5/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx5/e;

    return-object v0
.end method
