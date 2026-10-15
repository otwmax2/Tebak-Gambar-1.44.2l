###### Class da.m (da.m)
.class public interface abstract Lda/m;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"

# interfaces
.implements Lk9/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk9/d<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract B(Ljava/lang/Object;)V
.end method

.method public abstract m(Ljava/lang/Object;Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract w(Ljava/lang/Throwable;)Z
.end method

.method public abstract x(Ljava/lang/Object;Ls9/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract z(Ls9/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation
.end method

###### Class da.m.a (da.m$a)
.class public final Lda/m$a;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lda/m;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 1
    :cond_7
    invoke-interface {p0, p1}, Lda/m;->w(Ljava/lang/Throwable;)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
