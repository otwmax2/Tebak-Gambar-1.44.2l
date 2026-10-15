###### Class k3.j (k3.j)
.class public abstract Lk3/j;
.super Ljava/lang/Object;
.source "BatchedLogRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lk3/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk3/m;",
            ">;)",
            "Lk3/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk3/d;

    invoke-direct {v0, p0}, Lk3/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Ld6/a;
    .registers 2

    .line 1
    new-instance v0, Lf6/d;

    invoke-direct {v0}, Lf6/d;-><init>()V

    sget-object v1, Lk3/b;->a:Le6/a;

    .line 2
    invoke-virtual {v0, v1}, Lf6/d;->j(Le6/a;)Lf6/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lf6/d;->k(Z)Lf6/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lf6/d;->i()Ld6/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk3/m;",
            ">;"
        }
    .end annotation
.end method
