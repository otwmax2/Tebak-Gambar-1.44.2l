###### Class y4.p (y4.p)
.class public final Ly4/p;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ly4/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/t<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly4/t;

    invoke-direct {v0}, Ly4/t;-><init>()V

    iput-object v0, p0, Ly4/p;->a:Ly4/t;

    return-void
.end method


# virtual methods
.method public final a()Ly4/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Ly4/p;->a:Ly4/t;

    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ly4/p;->a:Ly4/t;

    invoke-virtual {v0, p1}, Ly4/t;->h(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/p;->a:Ly4/t;

    invoke-virtual {v0, p1}, Ly4/t;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ly4/p;->a:Ly4/t;

    invoke-virtual {v0, p1}, Ly4/t;->j(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/p;->a:Ly4/t;

    invoke-virtual {v0, p1}, Ly4/t;->k(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
