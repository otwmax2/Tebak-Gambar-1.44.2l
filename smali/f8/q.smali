###### Class f8.q (f8.q)
.class public final enum Lf8/q;
.super Ljava/lang/Enum;
.source "NetworkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lf8/q;

.field public static final enum q:Lf8/q;

.field public static final enum r:Lf8/q;

.field private static final synthetic s:[Lf8/q;


# instance fields
.field final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lf8/q;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lf8/q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf8/q;->p:Lf8/q;

    .line 2
    new-instance v1, Lf8/q;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lf8/q;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/q;->q:Lf8/q;

    .line 3
    new-instance v4, Lf8/q;

    const-string v6, "OFFLINE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lf8/q;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lf8/q;->r:Lf8/q;

    const/4 v6, 0x3

    new-array v6, v6, [Lf8/q;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lf8/q;->s:[Lf8/q;

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
    iput p3, p0, Lf8/q;->o:I

    return-void
.end method

.method public static c(I)Z
    .registers 2

    .line 1
    sget-object v0, Lf8/q;->r:Lf8/q;

    iget v0, v0, Lf8/q;->o:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static e(I)Z
    .registers 2

    .line 1
    sget-object v0, Lf8/q;->p:Lf8/q;

    iget v0, v0, Lf8/q;->o:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static f(I)Z
    .registers 2

    .line 1
    sget-object v0, Lf8/q;->q:Lf8/q;

    iget v0, v0, Lf8/q;->o:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/q;
    .registers 2

    .line 1
    const-class v0, Lf8/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/q;

    return-object p0
.end method

.method public static values()[Lf8/q;
    .registers 1

    .line 1
    sget-object v0, Lf8/q;->s:[Lf8/q;

    invoke-virtual {v0}, [Lf8/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/q;

    return-object v0
.end method
