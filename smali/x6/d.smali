###### Class x6.d (x6.d)
.class public final enum Lx6/d;
.super Ljava/lang/Enum;
.source "SessionEvent.kt"

# interfaces
.implements Lf6/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx6/d;",
        ">;",
        "Lf6/f;"
    }
.end annotation


# static fields
.field public static final enum p:Lx6/d;

.field public static final enum q:Lx6/d;

.field public static final enum r:Lx6/d;

.field public static final enum s:Lx6/d;

.field public static final enum t:Lx6/d;

.field public static final enum u:Lx6/d;

.field private static final synthetic v:[Lx6/d;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->p:Lx6/d;

    .line 2
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_SDK_NOT_INSTALLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->q:Lx6/d;

    .line 3
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_ENABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->r:Lx6/d;

    .line 4
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->s:Lx6/d;

    .line 5
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_DISABLED_REMOTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->t:Lx6/d;

    .line 6
    new-instance v0, Lx6/d;

    const-string v1, "COLLECTION_SAMPLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lx6/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx6/d;->u:Lx6/d;

    invoke-static {}, Lx6/d;->c()[Lx6/d;

    move-result-object v0

    sput-object v0, Lx6/d;->v:[Lx6/d;

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

    iput p3, p0, Lx6/d;->o:I

    return-void
.end method

.method private static final synthetic c()[Lx6/d;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lx6/d;

    sget-object v1, Lx6/d;->p:Lx6/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lx6/d;->q:Lx6/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lx6/d;->r:Lx6/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lx6/d;->s:Lx6/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lx6/d;->t:Lx6/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lx6/d;->u:Lx6/d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lx6/d;
    .registers 2

    const-class v0, Lx6/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx6/d;

    return-object p0
.end method

.method public static values()[Lx6/d;
    .registers 1

    sget-object v0, Lx6/d;->v:[Lx6/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx6/d;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lx6/d;->o:I

    return v0
.end method
