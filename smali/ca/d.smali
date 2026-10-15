###### Class ca.d (ca.d)
.class public final enum Lca/d;
.super Ljava/lang/Enum;
.source "DurationUnitJvm.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lca/d;

.field public static final enum q:Lca/d;

.field public static final enum r:Lca/d;

.field public static final enum s:Lca/d;

.field public static final enum t:Lca/d;

.field public static final enum u:Lca/d;

.field public static final enum v:Lca/d;

.field private static final synthetic w:[Lca/d;


# instance fields
.field private final o:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "NANOSECONDS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->p:Lca/d;

    .line 2
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MICROSECONDS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->q:Lca/d;

    .line 3
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MILLISECONDS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->r:Lca/d;

    .line 4
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "SECONDS"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->s:Lca/d;

    .line 5
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v2, "MINUTES"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->t:Lca/d;

    .line 6
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "HOURS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->u:Lca/d;

    .line 7
    new-instance v0, Lca/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "DAYS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lca/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lca/d;->v:Lca/d;

    invoke-static {}, Lca/d;->c()[Lca/d;

    move-result-object v0

    sput-object v0, Lca/d;->w:[Lca/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lca/d;->o:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private static final synthetic c()[Lca/d;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lca/d;

    sget-object v1, Lca/d;->p:Lca/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->q:Lca/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->r:Lca/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->s:Lca/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->t:Lca/d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->u:Lca/d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lca/d;->v:Lca/d;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lca/d;
    .registers 2

    const-class v0, Lca/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/d;

    return-object p0
.end method

.method public static values()[Lca/d;
    .registers 1

    sget-object v0, Lca/d;->w:[Lca/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca/d;

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/concurrent/TimeUnit;
    .registers 2

    .line 1
    iget-object v0, p0, Lca/d;->o:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
