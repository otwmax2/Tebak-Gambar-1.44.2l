###### Class fa.e (fa.e)
.class public final enum Lfa/e;
.super Ljava/lang/Enum;
.source "BufferOverflow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfa/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lfa/e;

.field public static final enum p:Lfa/e;

.field public static final enum q:Lfa/e;

.field private static final synthetic r:[Lfa/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lfa/e;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfa/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfa/e;->o:Lfa/e;

    .line 2
    new-instance v0, Lfa/e;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfa/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfa/e;->p:Lfa/e;

    .line 3
    new-instance v0, Lfa/e;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfa/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfa/e;->q:Lfa/e;

    invoke-static {}, Lfa/e;->c()[Lfa/e;

    move-result-object v0

    sput-object v0, Lfa/e;->r:[Lfa/e;

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

.method private static final synthetic c()[Lfa/e;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lfa/e;

    sget-object v1, Lfa/e;->o:Lfa/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfa/e;->p:Lfa/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lfa/e;->q:Lfa/e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfa/e;
    .registers 2

    const-class v0, Lfa/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfa/e;

    return-object p0
.end method

.method public static values()[Lfa/e;
    .registers 1

    sget-object v0, Lfa/e;->r:[Lfa/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfa/e;

    return-object v0
.end method
