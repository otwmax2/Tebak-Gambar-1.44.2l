###### Class i1.n (i1.n)
.class public final enum Li1/n;
.super Ljava/lang/Enum;
.source "OutOfQuotaPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li1/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Li1/n;

.field public static final enum p:Li1/n;

.field private static final synthetic q:[Li1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Li1/n;

    const-string v1, "RUN_AS_NON_EXPEDITED_WORK_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li1/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li1/n;->o:Li1/n;

    .line 2
    new-instance v1, Li1/n;

    const-string v3, "DROP_WORK_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li1/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li1/n;->p:Li1/n;

    const/4 v3, 0x2

    new-array v3, v3, [Li1/n;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Li1/n;->q:[Li1/n;

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

.method public static valueOf(Ljava/lang/String;)Li1/n;
    .registers 2

    .line 1
    const-class v0, Li1/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li1/n;

    return-object p0
.end method

.method public static values()[Li1/n;
    .registers 1

    .line 1
    sget-object v0, Li1/n;->q:[Li1/n;

    invoke-virtual {v0}, [Li1/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li1/n;

    return-object v0
.end method
