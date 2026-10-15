###### Class da.t (da.t)
.class public final Lda/t;
.super Lda/z1;
.source "JobSupport.kt"

# interfaces
.implements Lda/s;


# instance fields
.field public final s:Lda/u;


# direct methods
.method public constructor <init>(Lda/u;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lda/z1;-><init>()V

    .line 2
    iput-object p1, p0, Lda/t;->s:Lda/u;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lda/t;->s:Lda/u;

    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    invoke-interface {p1, v0}, Lda/u;->F(Lda/l2;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lda/e2;->S(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lda/x1;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/t;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
