###### Class q9.f (q9.f)
.class public final enum Lq9/f;
.super Ljava/lang/Enum;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq9/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lq9/f;

.field public static final enum p:Lq9/f;

.field private static final synthetic q:[Lq9/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lq9/f;

    const-string v1, "TOP_DOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq9/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq9/f;->o:Lq9/f;

    .line 2
    new-instance v0, Lq9/f;

    const-string v1, "BOTTOM_UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq9/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq9/f;->p:Lq9/f;

    invoke-static {}, Lq9/f;->c()[Lq9/f;

    move-result-object v0

    sput-object v0, Lq9/f;->q:[Lq9/f;

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

.method private static final synthetic c()[Lq9/f;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lq9/f;

    sget-object v1, Lq9/f;->o:Lq9/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lq9/f;->p:Lq9/f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq9/f;
    .registers 2

    const-class v0, Lq9/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq9/f;

    return-object p0
.end method

.method public static values()[Lq9/f;
    .registers 1

    sget-object v0, Lq9/f;->q:[Lq9/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq9/f;

    return-object v0
.end method
