###### Class x6.t (x6.t)
.class public final enum Lx6/t;
.super Ljava/lang/Enum;
.source "ApplicationInfo.kt"

# interfaces
.implements Lf6/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx6/t;",
        ">;",
        "Lf6/f;"
    }
.end annotation


# static fields
.field public static final enum p:Lx6/t;

.field public static final enum q:Lx6/t;

.field public static final enum r:Lx6/t;

.field public static final enum s:Lx6/t;

.field private static final synthetic t:[Lx6/t;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lx6/t;

    const-string v1, "LOG_ENVIRONMENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lx6/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/t;->p:Lx6/t;

    .line 2
    new-instance v0, Lx6/t;

    const-string v1, "LOG_ENVIRONMENT_AUTOPUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lx6/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/t;->q:Lx6/t;

    .line 3
    new-instance v0, Lx6/t;

    const-string v1, "LOG_ENVIRONMENT_STAGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lx6/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/t;->r:Lx6/t;

    .line 4
    new-instance v0, Lx6/t;

    const-string v1, "LOG_ENVIRONMENT_PROD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lx6/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/t;->s:Lx6/t;

    invoke-static {}, Lx6/t;->c()[Lx6/t;

    move-result-object v0

    sput-object v0, Lx6/t;->t:[Lx6/t;

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

    iput p3, p0, Lx6/t;->o:I

    return-void
.end method

.method private static final synthetic c()[Lx6/t;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lx6/t;

    sget-object v1, Lx6/t;->p:Lx6/t;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lx6/t;->q:Lx6/t;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lx6/t;->r:Lx6/t;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lx6/t;->s:Lx6/t;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lx6/t;
    .registers 2

    const-class v0, Lx6/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx6/t;

    return-object p0
.end method

.method public static values()[Lx6/t;
    .registers 1

    sget-object v0, Lx6/t;->t:[Lx6/t;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx6/t;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lx6/t;->o:I

    return v0
.end method
