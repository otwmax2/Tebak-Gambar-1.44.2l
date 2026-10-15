###### Class da.r (da.r)
.class public final Lda/r;
.super Lda/z1;
.source "JobSupport.kt"


# instance fields
.field public final s:Lda/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/n<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lda/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/z1;-><init>()V

    .line 2
    iput-object p1, p0, Lda/r;->s:Lda/n;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lda/r;->s:Lda/n;

    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lda/n;->s(Lda/x1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lda/n;->H(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/r;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
