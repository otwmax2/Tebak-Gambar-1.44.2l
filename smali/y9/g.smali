###### Class y9.g (y9.g)
.class public Ly9/g;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly9/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lu9/a;"
    }
.end annotation


# static fields
.field public static final r:Ly9/g$a;


# instance fields
.field private final o:J

.field private final p:J

.field private final q:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ly9/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly9/g$a;-><init>(Lt9/g;)V

    sput-object v0, Ly9/g;->r:Ly9/g$a;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_22

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1a

    .line 2
    iput-wide p1, p0, Ly9/g;->o:J

    .line 3
    invoke-static/range {p1 .. p6}, Ln9/c;->d(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Ly9/g;->p:J

    .line 4
    iput-wide p5, p0, Ly9/g;->q:J

    return-void

    .line 5
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ly9/g;->o:J

    return-wide v0
.end method

.method public final g()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ly9/g;->p:J

    return-wide v0
.end method

.method public i()Li9/z;
    .registers 9

    .line 1
    new-instance v7, Ly9/h;

    iget-wide v1, p0, Ly9/g;->o:J

    iget-wide v3, p0, Ly9/g;->p:J

    iget-wide v5, p0, Ly9/g;->q:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ly9/h;-><init>(JJJ)V

    return-object v7
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly9/g;->i()Li9/z;

    move-result-object v0

    return-object v0
.end method

###### Class y9.g.a (y9.g$a)
.class public final Ly9/g$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Ly9/g$a;-><init>()V

    return-void
.end method
