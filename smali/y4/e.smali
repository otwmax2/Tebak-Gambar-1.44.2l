###### Class y4.e (y4.e)
.class public abstract Ly4/e;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ly4/a;)Ly4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/a<",
            "TResultT;>;)",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/concurrent/Executor;Ly4/b;)Ly4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/b;",
            ")",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/concurrent/Executor;Ly4/c;)Ly4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/c<",
            "-TResultT;>;)",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Exception;
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method
