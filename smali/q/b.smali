###### Class q.b (q.b)
.class public Lq/b;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field static b:Lq/b;

.field public static c:[Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lq/b;

    invoke-direct {v0}, Lq/b;-><init>()V

    sput-object v0, Lq/b;->b:Lq/b;

    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    .line 2
    iput-object v0, p0, Lq/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(D)D
    .registers 3

    return-wide p1
.end method

.method public b(D)D
    .registers 3

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lq/b;->a:Ljava/lang/String;

    return-object v0
.end method
