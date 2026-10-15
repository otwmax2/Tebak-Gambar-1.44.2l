###### Class i9.k0 (i9.k0)
.class final enum Li9/k0;
.super Ljava/lang/Enum;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li9/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Li9/k0;

.field public static final enum p:Li9/k0;

.field public static final enum q:Li9/k0;

.field public static final enum r:Li9/k0;

.field private static final synthetic s:[Li9/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Li9/k0;

    const-string v1, "Ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li9/k0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li9/k0;->o:Li9/k0;

    .line 2
    new-instance v0, Li9/k0;

    const-string v1, "NotReady"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li9/k0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li9/k0;->p:Li9/k0;

    .line 3
    new-instance v0, Li9/k0;

    const-string v1, "Done"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Li9/k0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li9/k0;->q:Li9/k0;

    .line 4
    new-instance v0, Li9/k0;

    const-string v1, "Failed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Li9/k0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li9/k0;->r:Li9/k0;

    invoke-static {}, Li9/k0;->c()[Li9/k0;

    move-result-object v0

    sput-object v0, Li9/k0;->s:[Li9/k0;

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

.method private static final synthetic c()[Li9/k0;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Li9/k0;

    sget-object v1, Li9/k0;->o:Li9/k0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Li9/k0;->p:Li9/k0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Li9/k0;->q:Li9/k0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Li9/k0;->r:Li9/k0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li9/k0;
    .registers 2

    const-class v0, Li9/k0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li9/k0;

    return-object p0
.end method

.method public static values()[Li9/k0;
    .registers 1

    sget-object v0, Li9/k0;->s:[Li9/k0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li9/k0;

    return-object v0
.end method
