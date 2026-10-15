###### Class da.o2 (da.o2)
.class Lda/o2;
.super Lda/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lda/a<",
        "Lh9/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk9/g;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lda/a;-><init>(Lk9/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected f0(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/a;->getContext()Lk9/g;

    move-result-object v0

    invoke-static {v0, p1}, Lda/l0;->a(Lk9/g;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
