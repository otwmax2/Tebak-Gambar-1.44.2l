###### Class f8.p (f8.p)
.class public final enum Lf8/p;
.super Ljava/lang/Enum;
.source "MemoryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lf8/p;

.field public static final enum q:Lf8/p;

.field private static final synthetic r:[Lf8/p;


# instance fields
.field final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lf8/p;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lf8/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf8/p;->p:Lf8/p;

    .line 2
    new-instance v1, Lf8/p;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lf8/p;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/p;->q:Lf8/p;

    new-array v4, v5, [Lf8/p;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lf8/p;->r:[Lf8/p;

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
    iput p3, p0, Lf8/p;->o:I

    return-void
.end method

.method static c(I)Z
    .registers 2

    .line 1
    sget-object v0, Lf8/p;->p:Lf8/p;

    iget v0, v0, Lf8/p;->o:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static e(I)Z
    .registers 2

    .line 1
    sget-object v0, Lf8/p;->q:Lf8/p;

    iget v0, v0, Lf8/p;->o:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/p;
    .registers 2

    .line 1
    const-class v0, Lf8/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/p;

    return-object p0
.end method

.method public static values()[Lf8/p;
    .registers 1

    .line 1
    sget-object v0, Lf8/p;->r:[Lf8/p;

    invoke-virtual {v0}, [Lf8/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/p;

    return-object v0
.end method
